## Welcome to Mobum!
Serious misalignment and unnatural motions of the body can be signs that there is harm being done. We wanted to fill this need for an at-home wearable device to detect such harm while being low cost and low profile. We have developed a device (called Mobum) that works together with modular sensor devices (called Moodles) in order to create a platform for any sort of physical therapy, posture control, or exercise.  This allows any user to commit long-term to these therapies and develop better physical habits. Our web interface allows users to securely track your movements real time, easily develop your own custom routines, and even lets your physicians access your progression and prescribe novel therapies.

## Inspiration

Physical therapy is inaccessible for a lot of people because of its long commitment, cost, and lack of real-time feedback. Many of us on the team has had problems with scoliosis, posture, athletic injuries, and exercise form and it was difficult to maintain good form and posture for our therapies; its easy to forget what's correct. This is dangerous, so we thought of a solution to track this data and provide instant therapy at home!

## What it does

Mobum is an accelerometer based motion tracking system that can detect these errors in our movement (or lack thereof). It uses data from our three (or more) modular Moodle sensors and compares it to the given therapy or movement profile. This can correct for things like bad sitting posture, exercise regiment, our athletic injury recovery. By simply changing the profile on the device, this device can help guide people through a number of these profiles. We use machine learning to take advantage of user's habits in a safe and secure way and allow users to better connect themselves with their physicians, and themselves.

## How We built it

We used a discrete wired/wireless micro-controller connected to multiple I2C accelerometers to receive motion data. Additionally, an audio/visual signal is connected to give realtime feedback to the user of their form. Using a mix of R,  C, C++, Java, Shiny, HTML, and JavaScript, we were able to receive this data through continuous serial data from our master/slave communication addresses and process it using our algorithms to provide on-device audio/visual feedback. Furthermore, a web interface (photos included), allows for users to explore their history securely, analyze their trends, and share data with physicians. Physicians and users can also prescribe and create custom motion regiments easily for all round safety!

## Mobum Members:

**Sun Jay Yoo** is a Biomedical Engineering and Computer Science major at Johns Hopkins University, specializing in computational medicine, computer vision, and biodesign. He developed Mobum’s software pipeline, I2C interfacing algorithms, and dynamic web interface

**Tom Wan** is a mathematics major at Johns Hopkins University with a particular interest machine learning and computational medicine. He worked on Mobum’s advanced motion algorithms and software development for our Moodles

**Dan Sohn** is a pre-med Computer Science major at Johns Hopkins, with a specialty in multiplexers and sensor technology. He worked on Mobum’s signal processing and software compatibility for our array of sensors and microcontrollers.

**Jack Zheng** is a mechanical engineer at Johns Hopkins, specializing in motion dynamics and hardware engineering. He assembled and configured the Mobum and its Moodles, along with human-interfacing design-specs for scalability.

**Lilian Zhou** is a Computer Science major at Johns Hopkins University, specializing in entrepreneurship, market research, and clinical validation. She heavily researched Mobum’s design criteria, along with needs validation and graphical design.
