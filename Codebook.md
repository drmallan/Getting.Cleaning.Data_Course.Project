#Getting and Cleaning Data Course Project
###David Allan, July 26 2015

##Project Description
The project takes as input data from an experiment in detecting activities using accelerometer and gyroscope data. It outputs a tidy dataset containing mean and standard deviation values.

##Experimental Design and Background
The experiment involved using accelerometer and gyroscope data from a Samsung smartphone to detect six types of activities: 
* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

## Experimental Procedure
The raw sensor data was taken from the Smartphone sensors was randomnly partitioned into two sets. 70% of the volunteers were selected for generating the training data and 30% the test data.

The data was then preprocessed using filtering and sampling techniques. The processed data was provided in "training" and "test" sets shown below:

Training
* y_train.txt - activities detected (range of 6)
* subject_train.txt - a number from 1 to 30 denoting the subject ID
* X_train.txt - 561-feature vector with time and frequency domain variables

Test
* y_test.txt - activities detected (range of 6)
* subject_test.txt - a number from 1 to 30 denoting the subject ID
* X_test.txt - 561-feature vector with time and frequency domain variables

The file activity_labels.txt contains the six activity names listed above. The file features.txt contains the names of the 561 variables found the tables X_train.txt and X_test.txt.

Note: the "inertial signals" datasets were not used in this analysis.

##Analysis Steps
1. The training and test datasets were merged to create one dataset. The detected activities and subject IDs were added. 
2. The mean and standard deviation measurements (66 measurements) were extracted. Note: measurements of "meanFreq" were not included.
3. The activity names provided in activity_labels.txt were used to identify the activities.
4. The 66 variable names were cleaned up to make them more readable.
5. From the data set in step 4, a second, independent tidy data set was created with the average of each variable for each activity and each subject. This dataset is contained in the file tidydata.txt.
More detail of the analysis steps can be found here:
https://github.com/drmallan/Getting.Cleaning.Data_Course.Project/blob/master/README.md

##Output Format
The file tidydata.txt contains 180 mean or standard deviation values for each variable. The variables are described below.

Column | Variable Name                     | Definition
-------|-----------------------------------|-------------------------------------------------------
      1  Subject                             Subject ID
      2  Activity                            Activity name
      3  tBodyAcc.mean-X                     Mean of the body acceleration on the x-axis
      4  tBodyAcc.mean-Y                     Mean of the body acceleration on the y-axis
      5  tBodyAcc.mean-Z                     Mean of the body acceleration on the z-axis
      6  tBodyAcc.std-X                      Std. dev. of the body acceleration on the x-axis
      7  tBodyAcc.std-Y                      Std. dev. of the body acceleration on the y-axis
      8  tBodyAcc.std-Z                      Std. dev. of the body acceleration on the z-axis
      9  tGravityAcc.mean-X                  Mean of gravity acceleration on the x-axis
      10 tGravityAcc.mean-Y                  Mean of gravity acceleration on the y-axis
      11 tGravityAcc.mean-Z                  Mean of gravity acceleration on the z-axis
      12 tGravityAcc.std-X                   Std. dev. of gravity acceleration on the x-axis
      13 tGravityAcc.std-Y                   Std. dev. of gravity acceleration on the y-axis
      14 tGravityAcc.std-Z                   Std. dev. of gravity acceleration on the z-axis
      15 BodyAccJerk.mean-X                  Mean of body jerk acceleration on the x-axis
      16 tBodyAccJerk.mean-Y                 Mean of body jerk acceleration on the y-axis
      17 tBodyAccJerk.mean-Z                 Mean of body jerk acceleration on the z-axis
      18 tBodyAccJerk.std-X                  Std. dev of body jerk acceleration on the x-axis
      19 tBodyAccJerk.std-Y                  Std. dev. of body jerk acceleration on the y-axis
      20 tBodyAccJerk.std-Z                  Std. dev. of body jerk acceleration on the z-axis
      21 tBodyGyro.mean-X                    Mean of the body angular velocity on the x-axis 
      22 tBodyGyro.mean-Y                    Mean of the body angular velocity on the y-axis
      23 tBodyGyro.mean-Z                    Mean of the body angular velocity on the z-axis 
      24 tBodyGyro.std-X                     Std. dev. of the body angular velocity on the x-axis 
      25 tBodyGyro.std-Y                     Std. dev. of the body angular velocity on the y-axis 
      26 tBodyGyro.std-Z                     Std. dev. of the body angular velocity on the z-axis 
      27 tBodyGyroJerk.mean-X                Mean of body gyro jerk on the x-axis
      28 tBodyGyroJerk.mean-Y                Mean of body gyro jerk on the y-axis
      29 tBodyGyroJerk.mean-Z                Mean of body gyro jerk on the z-axis
      30 tBodyGyroJerk.std-X                 Std. dev. of body gyro jerk on the x-axis
      31 tBodyGyroJerk.std-Y                 Std. dev. of body gyro jerk on the y-axis
      32 tBodyGyroJerk.std-Z                 Std. dev of body gyro jerk on the z-axis
      33 tBodyAccMag.mean                    Mean of body acceleration magnitude
      34 tBodyAccMag.std                     Std. dev. of body acceleration magnitude
      35 tGravityAccMag.mean                 Mean of gravity acceleration magnitude
      36 tGravityAccMag.std                  Std. dev. of gravity acceleration magnitude
      37 tBodyAccJerkMag.mean                Mean of body acceleration jerk magnitude
      38 tBodyAccJerkMag.std                 Std. dev. of body acceleration jerk magnitude
      39 tBodyGyroMag.mean                   Mean of body angular velocity
      40 tBodyGyroMag.std                    Std. dev. of body angular velocity
      41 tBodyGyroJerkMag.mean               Mean of body gyro jerk magnitude
      42 tBodyGyroJerkMag.std                Std. dev. of body gyro jerk magnitude
      43 fBodyAcc.mean-X                     Mean of body acceleration in freq. domain on the x-axis
      44 fBodyAcc.mean-Y                     Mean of body acceleration in freq. domain on the y-axis
      45 fBodyAcc.mean-Z                     Mean of body acceleration in freq. domain on the z-axis
      46 fBodyAcc.std-X                      Std. dev. of body accel. in freq. domain on the x-axis
      47 fBodyAcc.std-Y                      Std. dev. of body accel. in freq. domain on the y-axis
      48 fBodyAcc.std-Z                      Std. dev. of body accel. in freq. domain on the z-axis
      49 fBodyAccJerk.mean-X                 Mean of body accel. jerk in freq. domain on the x-axis
      50 fBodyAccJerk.mean-Y                 Mean of body accel. jerk in freq. domain on the y-axis
      51 fBodyAccJerk.mean-Z                 Mean of body accel. jerk in freq. domain on the z-axis
      52 fBodyAccJerk.std-X                  Std. dev. of body accel. jerk in freq. domain on x-axis
      53 fBodyAccJerk.std-Y                  Std. dev. of body accel. jerk in freq. domain on y-axis
      54 fBodyAccJerk.std-Z                  Std. dev. of body accel. jerk in freq. domain on z-axis
      55 fBodyGyro.mean-X                    Mean of body angular velocity in freq. domain on x-axis
      56 fBodyGyro.mean-Y                    Mean of body angular velocity in freq. domain on y-axis
      57 fBodyGyro.mean-Z                    Mean of body angular velocity in freq. domain on z-axis
      58 fBodyGyro.std-X                     Std. dev. of body ang. velocity in freq. domain on x-axis
      59 fBodyGyro.std-Y                     Std. dev. of body ang. velocity in freq. domain on x-axis
      60 fBodyGyro.std-Z                     Std. dev. of body ang. velocity in freq. domain on x-axis
      61 fBodyAccMag.mean                    Mean of body accel. magnitude in freq. domain
      62 fBodyAccMag.std                     Std. dev. of body accel. magnitude in freq. domain
      63 fBodyBodyAccJerkMag.mean            Mean of body accel. jerk magnitude in freq. domain
      64 fBodyBodyAccJerkMag.std             Std. dev. of body accel. jerk magnitude in freq. domain
      65 fBodyBodyGyroMag.mean               Mean of body angular velocity magnitude in freq. domain
      66 fBodyBodyGyroMag.std                Std. dev. of body ang. velocity magnitude in freq. domain
      67 fBodyBodyGyroJerkMag.mean           Mean of body gyro jerk magnitude in freq. domain
      68 fBodyBodyGyroJerkMag.std            Std. dev. of body gyro jerk magnitude in freq. domain

Note: the variables are unitless. The values are normalized and bounded within [-1,1].

##Sources
The experimental dataset was generated by:  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova  
Via Opera Pia 11A, I-16145, Genoa, Italy  
activityrecognition@smartlab.ws  
www.smartlab.ws  
