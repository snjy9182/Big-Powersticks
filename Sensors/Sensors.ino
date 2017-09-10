
#include <MMA7660.h>
#include <Wire.h>
#include "MMA7660.h"
MMA7660 accelemeter;

void setup()
{
  accelemeter1.init();

  Serial.begin(9600);

  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);
//  pinMode(2, OUTPUT);

  digitalWrite(0, LOW);
  digitalWrite(1, HIGH);
//  digitalWrite(2, HIGH);
    
    int n = 0;

}

void loop()
{
  int8_t x;
  int8_t y;
  int8_t z;
  float ax,ay,az;
  
  accelemeter.getXYZ(&x,&y,&z);
  accelemeter.getAcceleration(&ax,&ay,&az);

   Serial.println("Sensor " + (n + 1) + ":");
  Serial.println(ax);
  Serial.println(ay);
  Serial.println(az);
 
  Serial.println("*************");



  digitalWrite(n, HIGH);
  digitalWrite((n + 1) % 2, LOW);

  n = (n + 1) % 2;

  delay(200);
}

