## Welcome to Mobum!
Serious misalignment and unnatural motions of body positions can be signs that there is harm being done. We wanted to fill this unmet need for an at-home wearable movement tracker to detect such harm while being low cost and low profile. Allowing patients long term commitment to develop better physical habits and connecting them with physicians to develop custom therapy regiments would really push bounds of wearable tech for all!

## Inspiration

Physical therapy is inaccessible for a lot of people since it requires a long commitment of frequent visits to achieve real results. At home, it's difficult to maintain form and know what is correct. Things like posture and workouts are easy to mess up, and proper form is often forget. This is dangerous.

## What it does

Mobum is an accelerometer based motion tracking system that can detect these errors. It uses data from three sensors (or more) and compares it to the given therapy or movement profile. By simply changing the profile on the device, device can help guide people to a different number of exercises and regiments. We use machine learning to take advantage of user's habits in a safe and secure way and allow better access to physical therapy.

## How We built it

We used an Arduino connected to three I2C accelerometers to receive motion data. Additionally, an audio/visual signal is connected to give realtime feedback to the user of their form. Using a mix of Adruino code, R, C++, Shiny, and Java, we were able to receive the data and nicely format graphs for the users. A web interface (photos included), allow for users to explore their history securely, analyze their trends, and share data with physicians. Physicians and users can also prescribe and create custom motion regiments easily for all round safety!

## Challenges we ran into

The biggest challenge was the ability to use multiple accelerometers with the Arduino. The accelerometers we had access to were hard set to certain addresses, so the master/slave communication was entangled between the different accelerometers.

## Members:

Sun Jay is Biomedical Engineering and Computer Science major at Johns Hopkins University, specializing in computational medicine, computer vision, and biodesign. He developed Mobum’s software pipeline and I2C interfacing algorithms.

Tom is a mathematics major at Johns Hopkins University with a particular interest machine learning and computational medicine. He worked on Mobum’s motion algorithms and software development.

Dan is a pre-med Computer Science major at Johns Hopkins, with a specialty in multiplexers and sensor technology. He worked on Mobum’s signal processing and software compatibility for our array of sensors and microcontrollers.

Jack is a mechanical engineer at Johns Hopkins, specializing in motion dynamics and hardware engineering. He assembled and configured the Mobum and its Moodles, along with human-interfacing design-specs for scalability.

Lilian is a Computer Science major at Johns Hopkins University, specializing in entrepreneurship, market research, and clinical validation. She heavily researched Mobum’s design criteria, along with needs validation and graphical design.
