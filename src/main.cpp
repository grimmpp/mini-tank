#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>

#include "webpage/index.h" //HTML webpage contents
#include "wifiCreds.h"

char wiFiHostname[] = "mini-tank";
String currentSessionId = String("");

ESP8266WebServer server(80);

void handleRoot() {
 server.send(200, "text/html", MAIN_page); //Send web page
}

void handleSessionId() {
  currentSessionId = String(millis());
  Serial.println("Generated new sessionId: "+currentSessionId);
  server.send(200, "text/html", currentSessionId); 
}


void handleSpeed(){
  String result = String("");

  Serial.print(F("Current SessionID: ")); Serial.println(currentSessionId);

  String sessionId = server.arg("sessionId");
  int speedX = server.arg("x").toInt();
  int speedY = server.arg("y").toInt();
  int speedM1 = server.arg("m1").toInt();
  int speedM2 = server.arg("m2").toInt();
  Serial.print(F("Received sessionId: ")); Serial.print(sessionId); 
  Serial.print(", x: "); Serial.print(speedX); 
  Serial.print(", y: "); Serial.print(speedY);
  Serial.print(", m1: "); Serial.print(speedM1);
  Serial.print(", m2: "); Serial.print(speedM2);
  Serial.println("");

  // abort if session is not matching. 
  if (!(currentSessionId.equals(sessionId))) {
    Serial.println(F("Session Ids do not match!"));
    server.send(500, "text/html", F("Session Ids do not match!"));
  }

  if (speedM1 >= 0) digitalWrite(D3, LOW);
  else digitalWrite(D3, HIGH);

  if (speedM2 >= 0) digitalWrite(D4, HIGH);
  else digitalWrite(D4, LOW);

  // Serial.print(F("Control motor with x: ")); Serial.print(speedX); Serial.print(", y: "); Serial.println(speedY);

  analogWrite(D1, abs(speedM1));
  analogWrite(D2, abs(speedM2));

  server.send(200, "text/html", ""); //Send web page
}

//==============================================================
//                  SETUP
//==============================================================
void setup(void){
  Serial.begin(115200);
  
  Serial.println("Init motors ...");

  pinMode(D1, OUTPUT); //Motor speed
  analogWrite(D1, 0);
  pinMode(D2, OUTPUT); //Motor speed
  analogWrite(D2, 0);
  
  pinMode(D3, OUTPUT); //Motor direction
  digitalWrite(D3, LOW);
  pinMode(D4, OUTPUT); //Motor direction
  digitalWrite(D4, HIGH);


  WiFi.begin(ssid, password);     //Connect to your WiFi router
  wifi_station_set_auto_connect(true);
  wifi_station_set_hostname(wiFiHostname);

  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  //If connection successful show IP address in serial monitor
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());  //IP address assigned to your ESP
 
  server.on("/", handleRoot);      //Which routine to handle at root location
  server.on("/speed", handleSpeed);
  server.on("/sessionId", handleSessionId);

  server.begin();                  //Start server
  Serial.println("HTTP server started");
}

//==============================================================
//                     LOOP
//==============================================================
void loop(void){
  server.handleClient();
}
