## Introduction - Adapted from features_info.txt
The features selected for this database come from the __accelerometer__ and __gyroscope__ 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These __time domain signals__ were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Similarly, the acceleration signal was then separated into __body__ and __gravity__ acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain __Jerk__ signals. Also the __magnitude__ of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform  was applied to some of these signals. __Freq__ is used to indicate the resulting frequency domain signals.

For each variable I have extracted the mean and standard deviation __(std).__


## List of Variables

__Body_Accelerometer-mean_time-X_Axis, Body_Accelerometer-mean_time-Y_Axis, Body_Accelerometer-mean_time-Z_Axis:__
accelerometer; body signal; time measurement; x,y,z axes 

__Body_Accelerometer-Time_std-X_Axis, Body_Accelerometer-Time_std-Y_Axis, Body_Accelerometer-Time_std-Z_Axis:__ 
accelerometer; body signal; time measurement; x,y,z axes

__Gravity_Accelerometer-mean_Time-X_Axis, Gravity_Accelerometer-mean_Time-Y_Axis, Gravity_Accelerometer-mean_Time-Z_Axis:__
accelerometer; gravity signal; time measurement; x,y,z axes

__Gravity_Accelerometer-Time_std-X_Axis, Gravity_Accelerometer-Time_std-Y_Axis, Gravity_Accelerometer-Time_std-Z_Axis:__
accelerometer; gravity signal; time measurement; x,y,z axes  

__Body_Accerometer_Jerk-mean_Time-X_Axis, Body_Accerometer_Jerk-mean_Time-Y_Axis, Body_Accerometer_Jerk-mean_Time-Z_Axis:__
accelerometer; body jerk signal; time measurement; x,y,z axes
 
__Body_Accelerometer-Time_std-X_AxisBody_Accelerometer_Jerk-Time_std-X_Axis, Body_Accelerometer_Jerk-Time_std-Y_Axis, Body_Accelerometer_Jerk-Time_std-Z_Axis:__ 
accelerometer; body jerk signal; time measurement; x,y,z axes 

__Body_Gyroscope-mean_time-X_axis, Body_Gyroscope-mean_time-Y_axis, Body_Gyroscope-mean_time-Z_axis:__
gyroscope; body signal; time measurement; x,y,z axes
 
__Body_Gyroscope-Time_std-X_Axis, Body_Gyroscope-Time_std-Y_Axis, Body_Gyroscope-Time_std-Z_Axis:__
gyroscope; body signal; time measurement; x,y,z axes

__Body_Gyroscope_Jerk-mean_Time-X_Axis, Body_Gyroscope_Jerk-mean_Time-Y_Axis, Body_Gyroscope_Jerk-mean_Time-Z_Axis:__
gyroscope; body jerk signal; time measurement; x,y,z axes
 
__Body_Gyroscope_Jerk-Time_std-X_Axis, Body_Gyroscope_Jerk-Time_std-Y_Axis, Body_Gyroscope_Jerk-Time_std-Z_Axis:__ 
gyroscope; body jerk signal; time measurement; x,y,z axes

__Body_Accelerometer_Magnitude-mean_Time:__ 
accelerometer; body signal; time measurement; magnitude

__Body_Accelerometer_Magnitude-Time_std:__ 
accelerometer; body signal; time measurement; magnitude 

__Gravity_Accelerometer_Magnitude-Mean_Time:__ 
accelerometer; gravity Signal; time measurement; magnitude 

__Gravity_Accelerometer_Magnitude-Time_std:__
accelerometer; gravity Signal; time measurement; magnitude

__Body_Accelerometer_Jerk_Magnitude-Mean_Time:__ 
accelerometer; body jerk signal; time measurement; magnitude

__Body_Accelerometer_Jerk_Magnitude-Time_std:__
accelerometer; body jerk signal; time measurement; magnitude 

__Body_Gyroscope_Magnitude-Mean_Time:__ 
gyroscope; body signal; time measurement; magnitude

__Body_Gyroscope_Magnitude-Time_std:__
gyroscope; body signal; time measurement; magnitude 

__Body_Gyroscope_Jerk_Magnitude-Mean_Time:__ 
gyroscope; body jerk signal; time measurement; magnitude

__Body_Gyroscope_Jerk_Mag-Time_std:__
gyroscope; body jerk signal; time measurement; magnitude 

__Body_Accelerometer-Freq_mean-X_Axis, Body_Accelerometer-Freq_mean-Y_Axis, Body_Accelerometer-Freq_mean-Z_Axis:__ 
accelerometer; body signal; frequency domain signals; x,y,z axes

__Body_Accelerometer-Freq_std-X_Axis, Body_Accelerometer-Freq_std-Y_Axis, Body_Accelerometer-Freq_std-Z_Axis:__
accelerometer; body signal; frequency domain signals; x,y,z axes

__Body_Accelerometer_Jerk-Freq_mean-X_Axis, Body_Accelerometer_Jerk-Freq_mean-Y_Axis, Body_Accelerometer_Jerk-Freq_mean-Z_Axis:__ 
accelerometer; body jerk signal; frequency domain signals; x,y,z axes 

__Body_Accelerometer_Jerk-std_X_Axis, Body_Accelerometer_Jerk-std_Y_Axis, Body_Accelerometer_Jerk-std_Z_Axis:__
accelerometer; body jerk signal; frequency domain signals; x,y,z axes 

__Body_Gyroscope-Freq_mean-X_Axis, Body_Gyroscope-Freq_mean-Y_Axis, Body_Gyroscope-Freq_mean-Z_Axis:__ 
gyroscope; body signal; frequency domain signals; x,y,z axes

__Body_Gyroscope-Freq_std-X_Axis, Body_Gyroscope-Freq_std-Y_Axis, Body_Gyroscope-Freq_std-Z_Axis:__ 
gyroscope; body signal; frequency domain signals; x,y,z axes

__Body_Accelerometer_Magnitude-Freq_mean:__ 
accelerometer; body signal; frequency domain signals; magnitude

__Body_Accelerometer_Magnitude-Freq_std:__
accelerometer; body signal; frequency domain signals; magnitude 

__Body_Body_Gyroscope_Magnitude-Freq_mean:__ 
gyroscope; body signal; frequency domain signals; magnitude

__Body_Body_Gyroscope_Magnitude-Freq_std:__ 
gyroscope; body signal; frequency domain signals; magnitude 

__Body_Body_Gyroscope_Jerk_Magnitude-Freq_mean:__ 
gyroscope; body jerk signal; frequency domain signals; magnitude

__Body_Body_Gyroscope_Jerk_Magnitude-freq_std:__
gyroscope; body jerk signal; frequency domain signals; magnitude 
