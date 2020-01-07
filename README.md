# Mini Tank

<img src="pics/MiniTank1_small.png" width=400/>

This project is based on the 3D-printed parts of [OTTO meets SMARS](https://www.thingiverse.com/thing:2818362) and contains an ESP8266 (NodeMCU) as controller including onboard WIFI support. 
The joystick or controller for the vehicle is a webpage which is deployed on the ESP8266.

## How to configure, build and run it?

### Prerequisites
* Install e.g. VSCode
* Install [platformio](https://platformio.org/) in VSCode as extionsion
  * **Hint:** For only buliding this project [platformio](https://platformio.org/) as commandline tool is sufficient. 
  * [platformio](https://platformio.org/) requires python.
  
### Configuration
Before you can build the project you need to enter your WIFI credentials in [src/wifiCreds.h](src/wifiCreds.h) so that the Mini-Tank can later on connect to your WIFI and is accessible within your WIFI.
After you entered your WIFI credentials ensure you don't store them into the git history. Therefore enter the following command: 
**`git update-index --assume-unchanged src/wifiCreds.h`**

### Build Project and Upload Binaries
Connect your ESP8266 to an USB Port. (The port will automatically be found.) The following command will then build the project and upload the binaries to the ESP8266.
**`pio run -t upload`**

### Using the Mini-Tank
Optionally you can check the command line output with the following command, if the ESP8266 is connected to an USB port.
**`pio device monitor -b 115200`**
<br />
Take a device within your WIFI e.g. a smartphone and open the webpage http://mini-tank (*'mini-tank'* is per default set as hostname so that you don't need to find out the IP address.). A webpage containing a joystick will appear. (See documentatio below.) 



## JoyStick
The joystick is a [webpage](src/webpage/index.html) deployed on the ESP8266 and can be used from all devices in the same network and which have a browser installed. 

<img src="pics/JoyStick1.png" />


## Part List
* ESP8266 NodeMCU v2 (There are two boards available with different widths. This one here has ca. 25mm width.)
* Esp8266 Nodemcu Motor Shield Drive Expansion Board ([Data Sheet](user-mannual-for-esp-12e-motor-shield.pdf))
* Battery 18650 3.7V
* Some wires and screws
* 3D printed parts
  * 1x [Base.stl](3d-printer-parts/Base.stl)
  * 1x [BatteryTray.stl](3d-printer-parts/BatteryTray.stl)
  * 1x [boardSupport.stl](3d-printer-parts/boardSupport.stl)
  * 2x [MasterWheelDC.stl](3d-printer-parts/MasterWheelDC.stl)
  * 2x [slave_wheel.stl](3d-printer-parts/slave_wheel.stl)
  * 32x [mechanical_track.stl](3d-printer-parts/mechanical_track.stl)
  * 32x [bozen.stl](3d-printer-parts/bozen.stl)
