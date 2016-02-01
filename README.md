{\rtf1\ansi\ansicpg1252\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 ## Run Analysis \
\
The function run_analysis.R takes test and training data from the Human Activity Recognition Using Smartphones Dataset combines them and calculates the mean of the features grouped by the subject and the activity being performed.\
\
The original data comes from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist.\
\
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals taccxyz and tgyroxyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyaccxyz and tgravityaccxyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. \
\
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerkxyz and tbodygyrojerkxyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). \
\
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyaccxyz, fbodyaccjerkxyz, fbodygyroxyz, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). \
\
These signals were used to estimate variables of the feature vector for each pattern:  \
\'91xyz\'92 is used to denote 3-axial signals in the x, y and z directions.\
\
To summarize, the features, as described above, are:\
\
subject\
activity\
tbodyaccxyz\
tgravityaccxyz\
tbodyaccjerkxyz\
tbodygyroxyz\
tbodygyrojerkxyz\
tbodyaccmag\
tgravityaccmag\
tbodyaccjerkmag\
tbodygyromag\
tbodygyroJerkmag\
fbodyaccxyz\
fbodyaccjerkxyz\
fbodygyroxyz\
fbodyaccmag\
fbodyaccjerkmag\
fbodygyromag\
fbodygyrojerkmag\
}