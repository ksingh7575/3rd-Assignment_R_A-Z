#Start of the Script

#Loading the Data

fin <- read.csv("Future-500.csv",
                na.strings = c("")) #fin -> Finance Data

#Exploring the Data
head(fin)

tail(fin)

str(fin)

colnames(fin)

summary(fin)

#Chaning from non-factor to factor

fin$ID <- factor(fin$ID)

fin$Inception <- factor(fin$Inception)

str(fin)

#Removing the Unnecesscary Characters

fin$Expenses <- gsub(" Dollar","",fin$Expenses)
fin$Expenses <- gsub(",","",fin$Expenses)

head(fin$Expenses)

fin$Expenses <- gsub("s","",fin$Expenses)
head(fin$Expenses)

fin$Revenue <- gsub("\\$","",fin$Revenue)
fin$Revenue <- gsub(",","",fin$Revenue)
str(fin)

fin$Growth <- gsub("%","",fin$Growth)
str(fin)

#Converting to Numeric
fin$Expenses <- as.numeric(fin$Expenses)
fin$Revenue <- as.numeric(fin$Revenue)
fin$Growth <- as.numeric(fin$Growth)

str(fin)

summary(fin)

###Dealing with Missing Data

#We updated import statement to : fin <- read.csv("Future-500.csv",
                                  #na.strings = c(""))
fin[!complete.cases(fin),]
