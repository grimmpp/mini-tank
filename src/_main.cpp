#include <Arduino.h>

void setup() {
  Serial.begin(115200);
  pinMode(D1, OUTPUT); //Motor speed
  analogWrite(D1, 0);
  pinMode(D2, OUTPUT); //Motor speed
  analogWrite(D2, 0);
  
  pinMode(D3, OUTPUT); //Motor direction
  digitalWrite(D3, LOW);
  pinMode(D4, OUTPUT); //Motor direction
  digitalWrite(D4, HIGH);

  analogWrite(D1, 1023);
  analogWrite(D2, 1023);
}

void loop() {
  delay(1000);
}