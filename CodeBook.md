Human Activity Recognition compact Datasets
========================================================

har
---

Dataset with the sensor information for the human activity recognition project.
Each row is a measurement.

Attributes:

**SUBJECT**

One variable named subject (lowercase) indicating the subject of the sensor data

*ACTIVITY*

One variable named activity (lowercase) indicating the subject activity when
the sensor information was recorded.

*BODY ACCELERATION*

A total of 6 variables with the following format:

bodyaccelerationxyz[mean|std]   

example: bodyaccelerationxmean

*GRAVITY ACCELERATION*

A total of 6 variables with the following format:

gravityaccelerationxyz[mean|std]

example: gravityaccelerationzstd

*BODY ACCELERATION JERK*

A total of 6 variables with the following format:

bodyaccelerationjerkxyz[mean|std]
example: bodyaccelerationjerkymean

*BODY GYROSCOPE*

A total of 6 variables with the following format:

bodygyroxyz[mean|std]
example: bodygyroxstd

*BODY GYROSCOPE JERK*

A total of 6 variables with the following format:

bodygyrojerkxyz[mean|std]
example: bodygyrojerkxstd

haraverages
-----------

This dataset averages for each subject and activity the measurements of
the sensors.
Each row is a unique combination of subject-activity.

Attributes:

*SUBJECT*

One variable named subject (lowercase) indicating the subject of the sensor data

*ACTIVITY*

One variable named activity (lowercase) indicating the subject activity when
the sensor information was recorded.


*BODY ACCELERATION*

A total of 6 variables with the following format:

bodyaccelerationxyz[mean|std]   

example: bodyaccelerationxmean   

*GRAVITY ACCELERATION*

A total of 6 variables with the following format:

gravityaccelerationxyz[mean|std]

example: gravityaccelerationzstd

*BODY ACCELERATION JERK*

A total of 6 variables with the following format:

bodyaccelerationjerkxyz[mean|std]
example: bodyaccelerationjerkymean

*BODY GYROSCOPE*

A total of 6 variables with the following format:

bodygyroxyz[mean|std]
example: bodygyroxstd

*BODY GYROSCOPE JERK*

A total of 6 variables with the following format:

bodygyrojerkxyz[mean|std]
example: bodygyrojerkxstd

