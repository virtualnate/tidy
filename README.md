
#Tidy Samsung Wearable Data Summary

The `run_analysis` function should be run in the “UCI HAR Dataset” directory.  The dplyr package should also be installed.  

The function combines the activity, subject, and testing data into a single dataframe, called `test`.  It also combines the activity, subject and training data into a single data frame called `train`.  

It then combines the `test` and `train` dataframes into a single data frame called `total`, arranged by activity first and then subject.  It only keeps variables corresponding to mean or standard deviation. 

It then adds descriptive column names to `total` and changes the subject variable from 1-6 to laying, sitting, standing, walking, walking downstairs and walking upstairs.

Finally, it calculates the mean of the variables by activity and subject to produce a tidy summary dataframe called `tidy`.  `tidy` is then written to a txt file called `tidy.txt`.