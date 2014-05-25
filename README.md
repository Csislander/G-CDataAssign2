##README

* Multivariate time-series data of "Human Activity Recognition Using Smartphones" was taken from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. Information on the data set can be found at the link provided.
* The training and test data set from the link provided were read into R. Only the Test and Training sets were read; Inertial signal were not deemed important and were ignored for this analysis.
* Column names were simplified by eliminating all punctuation. The data was then combined into one data set in R. Columns pertaining to mean and standard deviation were kept, and of those columns only the ones pertaining to time series (starting with t) were kept, as other information did not seem important.
* The remaining data was aggregated, and the mean of each column was taken, and exported to a tidy text file given with the assignment, as per instructions: "Creates a second, independent tidy data set with the average of each variable for each activity and each subject."
* This analysis is documented in "run_analysis.R", and assumes the data was extracted to the working directory.