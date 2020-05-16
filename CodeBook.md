Code Book
===================================================================================================

This dataset is originally from Human Activity Recognition Using Smartphones Data Set ...(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The proposed dataset was merged from train and test data file ('X_train.txt', 'X_test.txt', 'subject_train.txt', 'y_train.txt', 'y_test.txt', 'subject_test.txt') and get only a Mean and Standard Deviation of the original variable. the description of variable as the following:

1. Subject is a volunteer number
2. ActivityLabel describe activity names
3. The 3rd - 68th variable are the Mean and Standard Deviation of the original variable and transform its name as the following:
- Variable name which begin with 'Average' indicates average values of variable and the variable which start with 'StandardDeviation' indicates standard deviation of variable
- remove '-mean()' and '-std()'
- rename 'f' to 'Frequency'
- rename 't' to 'Time'
- rename 'Acc' to 'Accelerometer'
- rename 'Gyro' to 'Gyroscope'
- rename 'Mag' to 'Magnitude'
- rename '-X' to 'XAxis'
- rename '-Y' to 'YAxis'
- rename '-Z' to 'ZAxis'

Variable List
===================================================================================================

1. Subject
2. ActivityLabel
3. AverageTimeBodyAccelerometerXAxis
4. AverageTimeBodyAccelerometerYAxis
5. AverageTimeBodyAccelerometerZAxis
6. StandardDeviationTimeBodyAccelerometerXAxis
7. StandardDeviationTimeBodyAccelerometerYAxis
8. StandardDeviationTimeBodyAccelerometerZAxis
9. AverageTimeGravityAccelerometerXAxis
10. AverageTimeGravityAccelerometerYAxis
11 AverageTimeGravityAccelerometerZAxis
12 StandardDeviationTimeGravityAccelerometerXAxis
13 StandardDeviationTimeGravityAccelerometerYAxis
14 StandardDeviationTimeGravityAccelerometerZAxis
15 AverageTimeBodyAccelerometerJerkXAxis
16 AverageTimeBodyAccelerometerJerkYAxis
17 AverageTimeBodyAccelerometerJerkZAxis
18 StandardDeviationTimeBodyAccelerometerJerkXAxis
19 StandardDeviationTimeBodyAccelerometerJerkYAxis
20 StandardDeviationTimeBodyAccelerometerJerkZAxis
21 AverageTimeBodyGyroscopeXAxis
22 AverageTimeBodyGyroscopeYAxis
23 AverageTimeBodyGyroscopeZAxis
24 StandardDeviationTimeBodyGyroscopeXAxis
25 StandardDeviationTimeBodyGyroscopeYAxis
26 StandardDeviationTimeBodyGyroscopeZAxis
27 AverageTimeBodyGyroscopeJerkXAxis
28 AverageTimeBodyGyroscopeJerkYAxis
29 AverageTimeBodyGyroscopeJerkZAxis
30 StandardDeviationTimeBodyGyroscopeJerkXAxis
31 StandardDeviationTimeBodyGyroscopeJerkYAxis
32 StandardDeviationTimeBodyGyroscopeJerkZAxis
33 AverageTimeBodyAccelerometerMagnitude
34 StandardDeviationTimeBodyAccelerometerMagnitude
35 AverageTimeGravityAccelerometerMagnitude
36 StandardDeviationTimeGravityAccelerometerMagnitude
37 AverageTimeBodyAccelerometerJerkMagnitude
38 StandardDeviationTimeBodyAccelerometerJerkMagnitude
39 AverageTimeBodyGyroscopeMagnitude
40 StandardDeviationTimeBodyGyroscopeMagnitude
41 AverageTimeBodyGyroscopeJerkMagnitude
42 StandardDeviationTimeBodyGyroscopeJerkMagnitude
43 AverageFrequencyBodyAccelerometerXAxis
44 AverageFrequencyBodyAccelerometerYAxis
45 AverageFrequencyBodyAccelerometerZAxis
46 StandardDeviationFrequencyBodyAccelerometerXAxis
47 StandardDeviationFrequencyBodyAccelerometerYAxis
48 StandardDeviationFrequencyBodyAccelerometerZAxis
49 AverageFrequencyBodyAccelerometerJerkXAxis
50 AverageFrequencyBodyAccelerometerJerkYAxis
51 AverageFrequencyBodyAccelerometerJerkZAxis
52 StandardDeviationFrequencyBodyAccelerometerJerkXAxis
53 StandardDeviationFrequencyBodyAccelerometerJerkYAxis
54 StandardDeviationFrequencyBodyAccelerometerJerkZAxis
55 AverageFrequencyBodyGyroscopeXAxis
56 AverageFrequencyBodyGyroscopeYAxis
57 AverageFrequencyBodyGyroscopeZAxis
58 StandardDeviationFrequencyBodyGyroscopeXAxis
59 StandardDeviationFrequencyBodyGyroscopeYAxis
60 StandardDeviationFrequencyBodyGyroscopeZAxis
61 AverageFrequencyBodyAccelerometerMagnitude
62 StandardDeviationFrequencyBodyAccelerometerMagnitude
63 AverageFrequencyBodyBodyAccelerometerJerkMagnitude
64 StandardDeviationFrequencyBodyBodyAccelerometerJerkMagnitude
65 AverageFrequencyBodyBodyGyroscopeMagnitude
66 StandardDeviationFrequencyBodyBodyGyroscopeMagnitude
67 AverageFrequencyBodyBodyGyroscopeJerkMagnitude
68 StandardDeviationFrequencyBodyBodyGyroscopeJerkMagnitude