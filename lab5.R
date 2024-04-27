getwd()

#read the text file
data1 <- read.table("DATA.txt", header = TRUE, sep = ",")
data1
fix(data1)

#rename headers
names(data1) <- c("x1", "x2")
fix(data1)

attach(data1)

#Q1
hist(x2, main = "Histogram for No of Shareholders")
abline(h=0)


#Q2 
#length = noofclasses + 1
hist(x2, main = "Histogram for No of Shareholders", breaks = seq(130,270, length = 8), right =FALSE)
