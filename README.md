Inspiration
Inspired by our previous work in using Eigenfaces to recognize faces, we wanted to upgrade the experience to fully utilize neural networks.

What it does
SentinelAI is a smart home device that utilizes Amazon Alexa to provide a convenient way for users to secure their homes. SentinelAI uses a convolutional neural network in parallel with a 3D mapping of the face as a way to authenticate users upon calling Alexa to open their doors. Users can use the SentinelAI App which runs on both iOS and Android devices to register, delete, and manage users/faces that have access to your home.

How We built it
The App
The App was developed using React Native to enable both iOS and Android users to enjoy the use of SentinelAI. Currently, the app contains a simple UI that sends HTTP requests to a Node-RED server which is connected to the IBM Watson IoT Platform and a Cloudant database. A demo of the app can be seen here

Walabot RF 3D Scanner
The Walabot scanner is interfaced with via the Python SDK. Numerous displays have been developed for this project: The ability to view a live 3D graph of the scanner arena, a visualization of the energy (a normalized sum of all pixels) of the scanner, and a 2D projection of the original 3D data.

Two means of facial recognition were implemented. First, training data of faces and not faces were recorded from the 2D projection, and a clustering algorithm was trained to recognize faces. This was met with limited success, so a statistical approach was implemented instead. The sensor records an energy profile of items it should reject, such as an empty background. The energy samples (1000 in the calibration data) are approximately normally distributed. To recognize a face, energy is sampled numerous times, which is again normal. A t-statistic is then used to compute the statistical likelihood that the measured sample is different from the calibration data. If that is the case, we have recognized a face, as opposed to, for example, a piece of paper with an image which is transparent to the RF signals or a phone which has the wrong footprint.. The camera and facial recognition algorithm then authenticate the face.

Accomplishments that we're proud of
Being able to integrate so many moving pieces in a short amount of time, and not having to "hard" code anything!
