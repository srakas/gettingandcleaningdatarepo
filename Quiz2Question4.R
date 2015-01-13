con = url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode = readLines(con, 101)
close(con)
numOfCharsPerLine <- nchar(htmlCode)
numOfCharsPerLine[c(10, 20, 30, 100)]
