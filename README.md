# Course project for Getting and Cleaning Data course
## David Allan
Information about the input and output data used can be found here:

The script works as stated below.

Step 1: Read and merge input data
* Read the training and test data from the text files provided by the experimenter.
* Read activity data and relabels "V1" to "Activity".
* Read subject data and relabels "V1" to "Subject".
* Read variable names

Combine test and training datasets
* Bind the test and training data tables by row
* Bind the test and training activity tables by row
* Add activity and subject columns

Step 2: Extract mean and std. dev. variables
* Using the output of step 2, use grep to find the strings "mean" and "std" in the variable names
* Exclude the string "meanFreq"
* Find the desired column indices
* Subset the data

Step 3: Replace activity numbers with activity names
* Read the activity labels from the file provided
* Loop through all rows of the dataframe produced in step 2, replacing activity numbers with activity names

Steps 4 & 5: Create new data set with the average of each variable for each activity and each subject
* Melt the dataframe produced in step 3 by Subject and Activity
* Cast the melted data by Subject and Activity, and calculate mean of other variables 
* Tidy up the variable names by replacing "..." with "-" and removing instances of ".."
* Output the final result to the file tidydata.txt
