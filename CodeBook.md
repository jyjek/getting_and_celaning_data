# Getting and Cleaning Data Course Project

## Description
Below an information about data which was used in this project. The data you can find <a href=http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>here</a>
 
 ## About data set
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

 ## Attribute

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Task 1

We downloaded files, assign columns and create one data set for next tasks, using files higer

## Task 2

Read needed files and subseting values with our conditions. Add colnames

## Task 3

Merge data with activity table include activity names

## Task 4

Appropriately labels the data set with descriptive variable names.

## Task 5

Using dplyr package we produce final tidy data set with mean of each variable activity and subject.
After that write result into file result.txt
