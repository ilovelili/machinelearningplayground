installpackage <- function (package) {
    if (!any(grepl(package, installed.packages()))) {
        install.packages(package)
    }
}

installpackages <- function (packages) {
    for (package in packages) {
        installpackage(package)
    }    
}

downloadfile <- function (url, filename) {
    fileurl <- str_c(url, filename)
    download.file(fileurl, filename)
}

# The mode is the value that has highest number of occurrences in a set of data.
getmode <- function (data) {
    uniquev <- unique(data)
    uniquev[which.max(tabulate(match(data, uniquev)))]
}