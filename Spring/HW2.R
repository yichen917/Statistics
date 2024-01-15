# HW2

# 1.
# (1)
HWdata <- read.csv("C:\\Users\\ASUS\\Downloads\\HW2\\HWdata.csv")
dim ( HWdata )
# (2)
sorted_Old <- HWdata[order(HWdata$Old),]
head( sorted_Old ) #«e¤»§C
tail( sorted_Old ) #«e¤»°ª
# (3)
attach( HWdata)
length(which (Old>10 | Life<50) )
# (4)
rank <- length( Old > 12) +1
rank

# 2.
# (1)
regg <- lm(Life~Old)
summary( regg )
regg
# (2)
plot(x=Old,y=Life,main="Life & Old")
abline(regg,col="red",lwd=2)
# (3)
plot(regg)
# (4)
regg2 <- lm(Life~log(Old))
summary( regg2 )
regg2

plot(x=log(Old),y=Life,main="Life & log(Old)")
abline(regg2,col="red",lwd=2)

plot(regg2)

# 3.
n <- 1
sample.means <- rep(0,10000)
standardize <- rep(0,10000)
for(i in 1:10000){
  sample.means[i] <- mean(rt(n,3))
  standardize[i] <- sample.means[i]/(sqrt(3)/sqrt(n))
}
hist(standardize,main="size=1")
qqnorm(standardize)

n <- 10
sample.means <- rep(0,10000)
standardize <- rep(0,10000)
for(i in 1:10000){
  sample.means[i] <- mean(rt(n,3))
  standardize[i] <- sample.means[i]/(sqrt(3)/sqrt(n))
}
hist(standardize,main="size=10")
qqnorm(standardize)

n <- 50
sample.means <- rep(0,10000)
standardize <- rep(0,10000)
for(i in 1:10000){
  sample.means[i] <- mean(rt(n,3))
  standardize[i] <- sample.means[i]/(sqrt(3)/sqrt(n))
}
hist(standardize,main="size=50")
qqnorm(standardize)

n <- 100
sample.means <- rep(0,10000)
standardize <- rep(0,10000)
for(i in 1:10000){
  sample.means[i] <- mean(rt(n,3))
  standardize[i] <- sample.means[i]/(sqrt(3)/sqrt(n))
}
hist(standardize,main="size=100")
qqnorm(standardize)
