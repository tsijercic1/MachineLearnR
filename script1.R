# How to install, load, unload and uninstall a package
install.packages("LiblineaR")
require("LiblineaR") # library("LiblineaR") can be used instead
? LiblineaR # show info on package
detach("package:LiblineaR", unload=TRUE)
remove.packages("LiblineaR")