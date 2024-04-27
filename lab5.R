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
histogram <- hist(x2, main = "Histogram for No of Shareholders", breaks = seq(130,270, length = 8), right =FALSE)


#Q3
#1. identify the break points
breaks <- round(histogram$breaks)
breaks
#2. identify frequencies of each class
freq <- histogram$counts
freq
#3. identify mid points of each class
mid <- histogram$mids
mid

classes <- c()
for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1],"]")
}

#paste0-concatenate without spaces
#paste-concatenate with zeros

cbind(Classes=classes, Frequency=freq)
