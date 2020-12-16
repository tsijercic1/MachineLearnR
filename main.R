cars <-read.csv("./data/cars.csv", header = TRUE, sep = ";")
str(cars)
View(cars)
carOrigin <- table(cars$Origin)



remove(list = ls()) # ls() list all variables in the environment
