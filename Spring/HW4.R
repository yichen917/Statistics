install.packages("wooldridge")
library(wooldridge)
model1 <- lm(inlf~nwifeinc+educ+expersq+age+kidslt6+kidsge6, data=mroz)
summary(model1)

model2 <- glm(formula=inlf~nwifeinc+educ+expersq+age+kidslt6+kidsge6, data=mroz, family="binomial")
summary(model2)

install.packages("stargazer")
library(stargazer)
stargazer(model1, model2, type = "text", title = "Results",star.cutoffs = c(0.05, 0.01, 0.001))
