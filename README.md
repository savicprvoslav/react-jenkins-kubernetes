<img src="https://raw.githubusercontent.com/react-boilerplate/react-boilerplate-brand/master/assets/banner-metal-optimized.jpg" alt="react boilerplate banner" align="center" />

<br />

<div align="center"><strong>Start your next react project in seconds</strong></div>
<div align="center">A highly scalable, offline-first foundation with the best DX and a focus on performance and best practices</div>

<br />

# Jenkins and Docker

Example how to create docker image from your application created from react boilerplate. 

Dockerfile is a multistage build that as a results creates an image of just few MB in size created from busybox. All build files are located in /html folder.

Jenkins file creates the image and pushes it to Docker hub. <br />
PS: you need to add docker hub credentials for this.


