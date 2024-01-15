# HW3
library(wooldridge)
data("wage2")
model_1 <- lm(log(wage)~educ+exper+tenure+married+black+south+urban, data = wage2)
summary(model_1)
library(car)

model_2 <- lm(log(wage)~educ + exper + tenure + married+ black + black*married + south + urban, data = wage2)
summary(model_2)

library(stargazer)
stargazer(model_1, model_2, type = "text", title = "Results",star.cutoffs = c(0.05, 0.01, 0.001))
