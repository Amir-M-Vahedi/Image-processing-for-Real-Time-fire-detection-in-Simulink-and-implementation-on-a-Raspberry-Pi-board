# Image processing for Real-Time fire detection in Simulink and implementation on a Raspberry Pi board
This project has been done in order to recreate the fire detection algorithm of the Reference [[1]](#1).
In this project, the fire detection algorithm was recreated in matlab (file FireHSV.m).
The results of this algorithm for three cases are shown as folow:
<p float="left">
<img width="300" alt="Screenshot 2022-10-07 105709" src="https://user-images.githubusercontent.com/115154998/194625388-4b29d273-98b5-412e-a917-49611a7b9cab.png">
<img width="300" alt="Screenshot 2022-10-07 105709" src="https://user-images.githubusercontent.com/115154998/194625260-c7881317-7cc0-486d-8d07-b214e48155a9.png">
<img width="260" alt="Screenshot 2022-10-07 105709" src="https://user-images.githubusercontent.com/115154998/194624839-8fd5ee3a-13bc-4f93-8119-3c29a4a83a0f.png">
</p>



After that, In order to use this algorithm in real-time, the algoritm was implemented in Simulink (file test3_HSV.slx).
This simulink file has the ability to use the algoritm on the recorded videos, external webcam, and photos.
The results of this algorithm in simulink for one frame of a recorded video is shown in continue.
<p align="center">
<img width="1013" alt="Screenshot 2022-10-07 220752" src="https://user-images.githubusercontent.com/115154998/194627067-6a99643d-8e53-4551-934a-c5b2081ba51d.png">
</p>

In the end, the developed algorithm was implemented on a Raspberry Pi board with an external camera using Simulink support package for Raspberry Pi.





### Reference

<a id="1">[1]</a> 
He, B., Zhao, X., Zhou, Z., & Fan, Z. (2013). Implementation of a Fire Detection Algorithm on TMS320DM642 DSP using MATLAB/Simulink. July 2013. https://doi.org/10.2991/iccnce.2013.155

