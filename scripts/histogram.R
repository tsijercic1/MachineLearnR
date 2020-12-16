cars <-read.csv("./data/cars.csv", header = TRUE, sep = ";")
str(cars)
View(cars)
carOrigin <- table(cars$Origin)

hist(cars$Horsepower)
hist(cars$Horsepower, breaks = 5)
hist(cars$Horsepower, breaks = c(0,100,150,200,225,250))
hist(cars$Horsepower, breaks = c(0,50,100,150,200,225,250), freq = TRUE, col = "blue")
# will display warning but no worries :)

remove(list = ls()) # ls() list all variables in the environment
