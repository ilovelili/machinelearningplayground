setwd("C:\\Workspace\\R")
source("util.R")

# check if package installed
packages <- c("reshape", "RCurl", "XML", "stringr", "plyr", "plotrix")
installpackages(packages)

library(reshape)
library(RCurl)
library(XML)
library(stringr)
library(plyr)
library(MASS)
library(plotrix)

x <- c(1, 2, 3, 4, 5)
y <- c(100, 1000, 10000, 100000, 100000)
z <- c(10, 22, 31, 42, 52)
linearregression <- lm(formula = z ~ x + y, data = data.frame(x = x, y = y, z = z))
print(summary(linearregression))