
#include <MMA7660.h>
#include <Wire.h>
#include "MMA7660.h"
MMA7660 accelemeter1;
//MMA7660 accelemeter2;
//MMA7660 accelemeter3;


void setup()
{
	accelemeter1.init();
  //accelemeter2.init();  
  //accelemeter3.init();  
	Serial.begin(9600);

}
void loop()
{
	int8_t x1;
	int8_t y1;
	int8_t z1;
	float ax1,ay1,az1;

  //int8_t x2;
  //int8_t y2;
  //int8_t z2;
  //float ax2,ay2,az2;

  //int8_t x3;
  //int8_t y3;
  //int8_t z3;
  //float ax3,ay3,az3;

  
	accelemeter1.getXYZ(&x1,&y1,&z1);
	accelemeter1.getAcceleration(&ax1,&ay1,&az1);

  //accelemeter2.getXYZ(&x2,&y2,&z2);
  //accelemeter2.getAcceleration(&ax2,&ay2,&az2);

  //accelemeter3.getXYZ(&x3,&y3,&z3);
  //accelemeter3.getAcceleration(&ax3,&ay3,&az3);

  //Serial.println("Sensor 1");
	Serial.println(ax1);
	Serial.println(ay1);
	Serial.println(az1);

  //Serial.println("Sensor 2");
  //Serial.println(ax2);
  //Serial.println(ay2);
  //Serial.println(az2);

  //Serial.println("Sensor 3");ard
  //Serial.println(ax3);
  //Serial.println(ay3);
  //Serial.println(az3);
	
	Serial.println("*************");


	delay(5000);
}


