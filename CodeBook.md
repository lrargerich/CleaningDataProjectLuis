Human Activity Recognition compact Datasets
========================================================

har-dataset
-----------

Dataset with the sensor information for the human activity recognition project.
Each row is a measurement.

Attributes:

SUBJECT

One variable named subject (lowercase) indicating the subject of the sensor data

ACTIVITY

One variable named activity (lowercase) indicating the subject activity when
the sensor information was recorded.

BODY ACCELERATION

A total of 6 variables with the following format:

body_acceleration_xyz(mean|std)   

example: body_acceleration_x(mean)   

GRAVITY ACCELERATION

A total of 6 variables with the following format:

gravity_acceleration_xyz(mean|std)

example: gravity_acceleration_z(std)

BODY ACCELERATION JERK

A total of 6 variables with the following format:

body_acceleration_jerk_xyz(mean|std)
example: body_acceleration_jerk_y(mean)

BODY GYROSCOPE

A total of 6 variables with the following format:

body_gyro_xyz(mean|std)
example: body_gyro_x(std)

BODY GYROSCOPE JERK

A total of 6 variables with the following format:

body_gyro_jerk_xyz(mean|std)
example: body_gyro_jerk_x(std)

har_averages
------------

This dataset averages for each subject and activity the measurements of
the sensors.
Each row is a unique combination of subject-activity.

Attributes:

SUBJECT

One variable named subject (lowercase) indicating the subject of the sensor data

ACTIVITY

One variable named activity (lowercase) indicating the subject activity when
the sensor information was recorded.


BODY ACCELERATION

A total of 6 variables with the following format:

body_acceleration_xyz(mean|std)   

example: body_acceleration_x(mean)   

GRAVITY ACCELERATION

A total of 6 variables with the following format:

gravity_acceleration_xyz(mean|std)

example: gravity_acceleration_z(std)

BODY ACCELERATION JERK

A total of 6 variables with the following format:

body_acceleration_jerk_xyz(mean|std)
example: body_acceleration_jerk_y(mean)

BODY GYROSCOPE

A total of 6 variables with the following format:

body_gyro_xyz(mean|std)
example: body_gyro_x(std)

BODY GYROSCOPE JERK

A total of 6 variables with the following format:

body_gyro_jerk_xyz(mean|std)
example: body_gyro_jerk_x(std)

