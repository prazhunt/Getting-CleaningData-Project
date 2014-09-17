---
title: "Code Book for Human Activity Recognition using Smartphones data"
output: word_document
---

The dataset __TidyData.txt__ is the data from an experiment that has been carried out with a group of ___30___ volunteers within an age bracket of 19-48 years. Each person performed ___six___ activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 


The activities for each person are analyzed and various parameters like the mean and standard deviation of linear velocity, angular velocity and jerk have been observed. These parameters have been observed along X, Y and Z axis as well. Below is the definiton of all the features.

This dataset has 1 observation(row) for each activity of each subject. The columns correspond to 1 variable and there is no duplication.


__Variable Definitions__

1. subject: The column Subject is used to identify each of the 30 volunteers who have participated in the experiment. 
2. activityname: This captures the 6 different activities that the subjects performed from Laying to Walking
3. Frequency-BodyAcc-Mean-X: Mean of frequency domain signal of body acceleration along X axis
4. Frequency-BodyAcc-Mean-Y: Mean of frequency domain signal of body acceleration along Y axis
5. Frequency-BodyAcc-Mean-Z: Mean of frequency domain signal of body acceleration along Z axis
6. Frequency-BodyAcc-STD-X: Standard deviation of frequency domain signal of body acceleration along X axis
7. Frequency-BodyAcc-STD-Y: Standard deviation of frequency domain signal of body acceleration along X axis
8. Frequency-BodyAcc-STD-Z: Standard deviation of frequency domain signal of body acceleration along X axis
9. Frequency-BodyAccJerk-Mean-X: Mean of frequency domain signal of body acceleration jerk along X axis
10. Frequency-BodyAccJerk-Mean-Y: Mean of frequency domain signal of body acceleration jerk along Y axis
11. Frequency-BodyAccJerk-Mean-Z: Mean of frequency domain signal of body acceleration jerk along Z axis
12. Frequency-BodyAccJerk-STD-X: Standard Deviation of frequency domain signal of body acceleration jerk along X axis
13. Frequency-BodyAccJerk-STD-Y: Standard Deviation of frequency domain signal of body acceleration jerk along Y axis
14. Frequency-BodyAccJerk-STD-Z: Standard Deviation of frequency domain signal of body acceleration jerk along Z axis
15. Frequency-BodyAccMag-Mean: Mean of frequency domain signal of body acceleration magnitude
16. Frequency-BodyAccMag-STD: Standard Deviation of frequency domain signal of body acceleration magnitude
17. Frequency-BodyAccJerkMag-Mean: Mean of frequency domain signal of body acceleration jerk magnitude
18. Frequency-BodyAccJerkMag-STD: Standard Deviation of frequency domain signal of body acceleration jerk magnitude
19. Frequency-BodyGyroJerkMag-Mean: Mean of frequency domain signal of body angular velocity jerk magnitude
20. Frequency-BodyGyroJerkMag-STD: Standard Deviation of frequency domain signal of body angular velocity jerk magnitude
21. Frequency-BodyGyroMag-Mean: Mean of frequency domain signal of body angular velocity magnitude
22. Frequency-BodyGyroMag-STD: Standard Deviation of frequency domain signal of body angular velocity magnitude
23. Frequency-BodyGyro-Mean-X: Mean of frequency domain signal of body angular velocity along X axis
24. Frequency-BodyGyro-Mean-Y: Mean of frequency domain signal of body angular velocity along Y axis
25. Frequency-BodyGyro-Mean-Z: Mean of frequency domain signal of body angular velocity along Z axis
26. Frequency-BodyGyro-STD-X: Standard Deviation of frequency domain signal of body angular velocity along X axis
27. Frequency-BodyGyro-STD-Y: Standard Deviation of frequency domain signal of body angular velocity along Y axis
28. Frequency-BodyGyro-STD-Z: Standard Deviation of frequency domain signal of body angular velocity along Z axis
29. Time-BodyAcc-Mean-X: Mean of time domain signal of body acceleration along X axis
30. Time-BodyAcc-Mean-Y: Mean of time domain signal of body acceleration along Y axis
31. Time-BodyAcc-Mean-Z: Mean of time domain signal of body acceleration along Z axis
32. Time-BodyAcc-STD-X: Standard deviation of time domain signal of body acceleration along X axis
33. Time-BodyAcc-STD-Y: Standard deviation of time domain signal of body acceleration along X axis
34. Time-BodyAcc-STD-Z: Standard deviation of time domain signal of body acceleration along X axis
35. Time-BodyAccJerk-Mean-X: Mean of time domain signal of body acceleration jerk along X axis
36. Time-BodyAccJerk-Mean-Y: Mean of time domain signal of body acceleration jerk along Y axis
37. Time-BodyAccJerk-Mean-Z: Mean of time domain signal of body acceleration jerk along Z axis
38. Time-BodyAccJerk-STD-X: Standard Deviation of time domain signal of body acceleration jerk along X axis
39. Time-BodyAccJerk-STD-Y: Standard Deviation of time domain signal of body acceleration jerk along Y axis
40. Time-BodyAccJerk-STD-Z: Standard Deviation of time domain signal of body acceleration jerk along Z axis
41. Time-BodyAccJerkMag-Mean: Mean of time domain signal of body acceleration jerk magnitude
42. Time-BodyAccJerkMag-STD: Standard Deviation of time domain signal of body acceleration jerk magnitude
43. Time-BodyAccMag-Mean: Mean of time domain signal of body acceleration magnitude
44. Time-BodyAccMag-STD: Standard Deviation of time domain signal of body acceleration magnitude
45. Time-BodyGyro-Mean-X: Mean of time domain signal of body angular velocity along X axis
46. Time-BodyGyro-Mean-Y: Mean of time domain signal of body angular velocity along Y axis
47. Time-BodyGyro-Mean-Z: Mean of time domain signal of body angular velocity along Z axis
48. Time-BodyGyro-STD-X: Standard Deviation of time domain signal of body angular velocity along X axis
49. Time-BodyGyro-STD-Y: Standard Deviation of time domain signal of body angular velocity along Y axis
50. Time-BodyGyro-STD-Z: Standard Deviation of time domain signal of body angular velocity along Z axis
51. Time-BodyGyroJerk-Mean-X: Mean of time domain signal of body angular velocity jerk along X axis
52. Time-BodyGyroJerk-Mean-Y: Mean of time domain signal of body angular velocity jerk along Y axis
53. Time-BodyGyroJerk-Mean-Z: Mean of time domain signal of body angular velocity jerk along Z axis
54. Time-BodyGyroJerk-STD-X: Standard Deviation of time domain signal of body angular velocity jerk along X axis
55. Time-BodyGyroJerk-STD-Y: Standard Deviation of time domain signal of body angular velocity jerk along Y axis
56. Time-BodyGyroJerk-STD-Z: Standard Deviation of time domain signal of body angular velocity jerk along Z axis
57. Time-BodyGyroJerkMag-Mean: Mean of time domain signal of body angular velocity jerk magnitude
58. Time-BodyGyroJerkMag-STD: Standard Deviation of time domain signal of body angular velocity jerk magnitude
59. Time-BodyGyroMag-Mean: Mean of time domain signal of body angular velocity magnitude
60. Time-BodyGyroMag-STD: Standard Deviation of time domain signal of body angular velocity magnitude
61. Time-GravityAcc-Mean-X: Mean of time domain signal of gravity linear acceleration along X axis
62. Time-GravityAcc-Mean-Y: Mean of time domain signal of gravity linear acceleration along Y axis
63. Time-GravityAcc-Mean-Z: Mean of time domain signal of gravity linear acceleration along Z axis
64. Time-GravityAcc-STD-X: Standard Deviation of time domain signal of gravity linear acceleration along X axis
65. Time-GravityAcc-STD-Y: Standard Deviation of time domain signal of gravity linear acceleration along Y axis
66. Time-GravityAcc-STD-Z: Standard Deviation of time domain signal of gravity linear acceleration along Z axis
67. Time-GravityAccMag-Mean: Mean of time domain signal of gravity linear acceleration magnitude
68. Time-GravityAccMag-STD: Standard Deviation of time domain signal of gravity linear acceleration magnitude
