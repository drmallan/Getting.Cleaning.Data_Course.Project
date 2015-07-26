# run_analysis script
# Reads motion data and outputs tidy dataset of mean and standard deviation values per test subject and activity

# Read training data
x <- read.table("X_train.txt")

# Read activities and relabel column name
y <- read.table("y_train.txt")
y <- rename(y,Activity = V1)

# Read subjects and relabel column name
z <- read.table("subject_train.txt")
z <- rename(z, Subject = V1)

# Read training data, repeating above steps
x2 <- read.table("X_test.txt")
y2 <- read.table("y_test.txt")
y2 <- rename(y2, Activity = V1)
z2 <- read.table("subject_test.txt")
z2 <- rename(z2, Subject = V1)

# Read variable names
f <- read.table("features.txt")

# Read activity names and convert to character format
act_labs <- read.table("activity_labels.txt")
act_labs$V2 <- as.character(act_labs$V2)

# Get the variable names and apply them to the training and test data (x and x2)
var_names <- f$V2
names(x) <- var_names
names(x2) <- var_names

# Get a vector of indices for mean and std. dev. variables
c <- grep("mean", f$V2)
c2 <- grep("std", f$V2)
drop <- grep("meanFreq",f$V2) # Don't include "meanFreq" values
cc <- c(c,c2)
cc <- cc[!cc %in% drop]
cc <- sort(cc)
ccc <- cc + 2 # Shift by two to make columns 1 and 2 available for Subject and Activity
d <- c(1,2,ccc) # The variable "d" contains the indices of columns to be extracted

# Combine the test and training datasets
xx2 <- rbind(x,x2) # Bind the test and training data tables by row
yy2 <- rbind(y,y2) # Bind the test and training activity tables by row 
zz2 <- rbind(z,z2) # Bind the test and training subject tables by row
xy <- cbind(yy2,xx2) # Bind activity to data by column
xyz <- cbind(zz2,xy) # Bind subjects to data by column

# Extract mean and std. dev. variables
result <- xyz[d] # Subset columns by indices contained in variable "d" (from line 42)

# Loop through all rows and replace activity numbers with activity names 
looper <- nrow(result) # Determine length of table
for (i in 1:looper) {
  act <- as.numeric(result$Activity[i])
  result$Activity[i] <- as.character(result$Activity[i])
  result$Activity[i] <- act_labs$V2[act]
}

# Prepare final result
melter <- melt(result, id=c("Subject","Activity")) # Melt by Subject and Activity
caster <- dcast (melter, Subject + Activity ~ variable, mean) # Cast melted data and calculate means

# Fix up variable names by replacing "..." with dash and removing ".."
namer <- names(caster)
nice_names <- make.names(namer)
nice_names1 <- gsub("...","-",nice_names,fixed=TRUE)
nice_names2 <- gsub("..","",nice_names1,fixed=TRUE)
names(caster) <- nice_names2

# Output final result
write.table(caster,"tidydata.txt",row.names=FALSE)