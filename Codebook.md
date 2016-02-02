CodeBook for the tidy dataset

The tidy_data.txt file contains the averages of every activity for every subject and every feature if that feature is a 'mean' or 'std' feature. (If the feature label contained 'mean' or 'std' then the feature was included in this tidy_data.txt output file.)


Updates for the tidy set are given here. For original codebook please scroll down this file.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

ubsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is as follows:

[1] "subject"                         "activity"                        "timebodyaccmeanx"               
 [4] "timebodyaccmeany"                "timebodyaccmeanz"                "timebodyaccstdx"                
 [7] "timebodyaccstdy"                 "timebodyaccstdz"                 "timegravityaccmeanx"            
[10] "timegravityaccmeany"             "timegravityaccmeanz"             "timegravityaccstdx"             
[13] "timegravityaccstdy"              "timegravityaccstdz"              "timebodyaccjerkmeanx"           
[16] "timebodyaccjerkmeany"            "timebodyaccjerkmeanz"            "timebodyaccjerkstdx"            
[19] "timebodyaccjerkstdy"             "timebodyaccjerkstdz"             "timebodygyromeanx"              
[22] "timebodygyromeany"               "timebodygyromeanz"               "timebodygyrostdx"               
[25] "timebodygyrostdy"                "timebodygyrostdz"                "timebodygyrojerkmeanx"          
[28] "timebodygyrojerkmeany"           "timebodygyrojerkmeanz"           "timebodygyrojerkstdx"           
[31] "timebodygyrojerkstdy"            "timebodygyrojerkstdz"            "timebodyaccmagmean"             
[34] "timebodyaccmagstd"               "timegravityaccmagmean"           "timegravityaccmagstd"           
[37] "timebodyaccjerkmagmean"          "timebodyaccjerkmagstd"           "timebodygyromagmean"            
[40] "timebodygyromagstd"              "timebodygyrojerkmagmean"         "timebodygyrojerkmagstd"         
[43] "freqbodyaccmeanx"                "freqbodyaccmeany"                "freqbodyaccmeanz"               
[46] "freqbodyaccstdx"                 "freqbodyaccstdy"                 "freqbodyaccstdz"                
[49] "freqbodyaccmeanfreqx"            "freqbodyaccmeanfreqy"            "freqbodyaccmeanfreqz"           
[52] "freqbodyaccjerkmeanx"            "freqbodyaccjerkmeany"            "freqbodyaccjerkmeanz"           
[55] "freqbodyaccjerkstdx"             "freqbodyaccjerkstdy"             "freqbodyaccjerkstdz"            
[58] "freqbodyaccjerkmeanfreqx"        "freqbodyaccjerkmeanfreqy"        "freqbodyaccjerkmeanfreqz"       
[61] "freqbodygyromeanx"               "freqbodygyromeany"               "freqbodygyromeanz"              
[64] "freqbodygyrostdx"                "freqbodygyrostdy"                "freqbodygyrostdz"               
[67] "freqbodygyromeanfreqx"           "freqbodygyromeanfreqy"           "freqbodygyromeanfreqz"          
[70] "freqbodyaccmagmean"              "freqbodyaccmagstd"               "freqbodyaccmagmeanfreq"         
[73] "freqbodybodyaccjerkmagmean"      "freqbodybodyaccjerkmagstd"       "freqbodybodyaccjerkmagmeanfreq" 
[76] "freqbodybodygyromagmean"         "freqbodybodygyromagstd"          "freqbodybodygyromagmeanfreq"    
[79] "freqbodybodygyrojerkmagmean"     "freqbodybodygyrojerkmagstd"      "freqbodybodygyrojerkmagmeanfreq"




==============================================================================================================================


Original codebook:

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
