## Codebook for the tidy dataset

This dataset contains 81 variables/features. The original dataset was from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ which was 
collected from the accelerometers from the Samsung Galaxy S smartphone. Then a set of variables were estimated from these signals such as mean(), std(), max(), min().

### The first two variables are:
1. Subject - A set of 30 subjects on which the experiment was performed. Each subject is given one number ranging from 1 to 30.
2. Activity - A set of activity against wich the measurements were taken for each subject. Each subject performed each activity and a no. of observations were recorded. In 
this dataset we have taken the average of those observations for each subject-activity combination.

### Description of the rest of the variables(Measurement Variables):

This dataset contains only those variables from the original dataset that were either the mean(variables with mean() or meanFreq()) or standard deviation of the measurements taken.
After extracting the mean and std variables, the average of every variable was taken for each activity and subject combination. The acceleration signal was separated into body 
and gravity acceleration signals. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. The variables starting with 't' are time domain signals
and those starting with 'f' are on which Fast Fourier Transform (FFT) was applied. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### The Variables are:

1. tBodyAccMeanX
2. tBodyAccMeanY
3. tBodyAccMeanZ
4. tGravityAccMeanX
5. tGravityAccMeanY
6. tGravityAccMeanZ
7. tBodyAccJerkMeanX
8. tBodyAccJerkMeanY
9. tBodyAccJerkMeanZ
10. tBodyGyroMeanX
11. tBodyGyroMeanY
12. tBodyGyroMeanZ
13. tBodyGyroJerkMeanX
14. tBodyGyroJerkMeanY
15. tBodyGyroJerkMeanZ
16. tBodyAccMagMean
17. tGravityAccMagMean
18. tBodyAccJerkMagMean
19. tBodyGyroMagMean
20. tBodyGyroJerkMagMean
21. fBodyAccMeanX
22. fBodyAccMeanY
23. fBodyAccMeanZ
24. fBodyAccMeanFreqX
25. fBodyAccMeanFreqY
26. fBodyAccMeanFreqZ
27. fBodyAccJerkMeanX
28. fBodyAccJerkMeanY
29. fBodyAccJerkMeanZ
30. fBodyAccJerkMeanFreqX
31. fBodyAccJerkMeanFreqY
32. fBodyAccJerkMeanFreqZ
33. fBodyGyroMeanX
34. fBodyGyroMeanY
35. fBodyGyroMeanZ
36. fBodyGyroMeanFreqX
37. fBodyGyroMeanFreqY
38. fBodyGyroMeanFreqZ
39. fBodyAccMagMean
40. fBodyAccMagMeanFreq
41. fBodyAccJerkMagMean
42. fBodyAccJerkMagMeanFr
43. fBodyGyroMagMean
44. fBodyGyroMagMeanFreq
45. fBodyGyroJerkMagMean
46. fBodyGyroJerkMagMeanF
47. tBodyAccStdX
48. tBodyAccStdY
49. tBodyAccStdZ
50. tGravityAccStdX
51. tGravityAccStdY
52. tGravityAccStdZ
53. tBodyAccJerkStdX
54. tBodyAccJerkStdY
55. tBodyAccJerkStdZ
56. tBodyGyroStdX
57. tBodyGyroStdY
58. tBodyGyroStdZ
59. tBodyGyroJerkStdX
60. tBodyGyroJerkStdY
61. tBodyGyroJerkStdZ
62. tBodyAccMagStd
63. tGravityAccMagStd
64. tBodyAccJerkMagStd
65. tBodyGyroMagStd
66. tBodyGyroJerkMagStd
67. fBodyAccStdX
68. fBodyAccStdY
69. fBodyAccStdZ
70. fBodyAccJerkStdX
71. fBodyAccJerkStdY
72. fBodyAccJerkStdZ
73. fBodyGyroStdX
74. fBodyGyroStdY
75. fBodyGyroStdZ
76. fBodyAccMagStd
77. fBodyAccJerkMagStd
78. fBodyGyroMagStd
79. fBodyGyroJerkMagStd