
#include <MMA7660.h>
#include <Wire.h>
#include "MMA7660.h"
MMA7660 accelemeter;

void setup()
{
	accelemeter.init();  
	Serial.begin(9600);
}
void loop()
{
	int8_t x;
	int8_t y;
	int8_t z;
	float ax,ay,az;
	accelemeter.getXYZ(&x,&y,&z);
	
	accelemeter.getAcceleration(&ax,&ay,&az);
  Serial.println("accleration of X/Y/Z: ");
	Serial.print(ax + " g");
	Serial.print(ay + " g");
	Serial.print(az + " g");
	Serial.println("*************");
	delay(1000);
}


