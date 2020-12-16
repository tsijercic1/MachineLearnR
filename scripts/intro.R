# How to install, load, unload and uninstall a package
install.packages("LiblineaR")
require("LiblineaR") # library("LiblineaR") can be used instead
? LiblineaR # show info on package
detach("package:LiblineaR", unload=TRUE)
remove.packages("LiblineaR")

str(iris) # sample data

myRange <- 1:10
myVector <- c(1,2,3,4,5)
mySequence <- seq(1,20, by=2)
arrayInput <- scan() # terminates the input on empty field + enter

rm(myRange)
remove(myVector)
remove(mySequence)
remove(arrayInput)

# Rstudio isn't inserting tabs as tabs (in my case that is)...
employees <- read.table("./data/Employees.txt", header = TRUE, sep = "\t")
str(employees)

employees2 <-read.csv("./data/Employees.csv", header = TRUE)
str(employees2)

View(employees)
column <- table(employees$Name)
column # Lists out frequency of Column values
View(column) # can also be viewed in table format

remove(list = ls()) # ls() list all variables in the environment