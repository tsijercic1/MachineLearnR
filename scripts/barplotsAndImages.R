cars <-read.csv("./data/cars.csv", header = TRUE, sep = ";")
str(cars)
View(cars)
carOrigin <- table(cars$Origin)

View(carOrigin) # can also be viewed in table format
barplot(carOrigin) # graphics package
barplot(carOrigin[order(carOrigin)]) # ordered bar plot
barplot(carOrigin[order(-carOrigin)]) # ordered bar plot in reverse

barplot(
  carOrigin[order(-carOrigin)],    # order of y-axis values
  horiz = TRUE,                    # is horizontal
  col = c("red", "green", "blue"), # colors of bars
  border = NA,                     # border = none
  main = "Frequency of Origins",   # Title
  xlab = "Number of cars"          # X-axis label
) 

# save barplot as png
png(filename = "images/origins.png", width = 960, height = 480)
barplot(
  carOrigin[order(-carOrigin)],    # order of y-axis values
  horiz = TRUE,                    # is horizontal
  col = c("red", "green", "blue"), # colors of bars
  border = NA,                     # border = none
  main = "Frequency of Origins",   # Title
  xlab = "Number of cars"          # X-axis label
)
dev.off() # important after png file write

colors() # list of all colors available

remove(list = ls()) # ls() list all variables in the environment