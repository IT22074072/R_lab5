getwd()

#read the text file
data1 <- read.table("DATA.txt", header = TRUE, sep = ",")
data1
fix(data1)

#rename headers
names(data1) <- c("x1", "x2")
fix(data1)

attach(data1)

