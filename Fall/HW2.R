#1
set.seed(100)
height <- round(rnorm(50,170,15),2)

#2
set.seed(100)
gender = sample(c("male","female"),50,replace = TRUE,c(0.4,0.6))

#3
mydata = data.frame(height,gender)
head(mydata,10)

#4
barplot(table(gender))

#5
hist(height,breaks = seq(140,210,by=5), right = F,freq = T,main = "Height",col = blues9)

#6
boxplot(height~gender)

#7
aggregate(height,list(gender),summary)
