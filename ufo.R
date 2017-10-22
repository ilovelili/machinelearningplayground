# visualizations
library(ggplot2)

# data manipulation
library(plyr)

# fix date formats in plots
library(scales)

ufo <- read.delim(file.path("data", "ufo", "ufo_awesome.tsv"), 
    sep = "\t",
    stringsAsFactors = FALSE,
    header = FALSE,
    na.strings = ""
)

summary(ufo)
head(ufo)

names(ufo) <- c(
    "dateoccurred",
    "datereported",
    "location",
    "shortdescription",
    "duration",
    "longdescription"
)

good.rows <- ifelse(nchar(ufo$dateoccurred) != 8 | nchar(ufo$datereported) != 8,
                    FALSE,
                    TRUE)

length(which(!good.rows))
ufo <- ufo[good.rows, ]

print(ufo[0])