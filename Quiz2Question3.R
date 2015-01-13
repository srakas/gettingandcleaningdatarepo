library("sqldf")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
#download.file(fileUrl, "./uscommunitysurvey.csv", method="curl")
acs <- read.table("./uscommunitysurvey.csv", sep=",", header=TRUE);

test <- sqldf("select pwgtp1 from acs where AGEP < 50")
head(test)