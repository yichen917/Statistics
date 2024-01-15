#1
a = qnorm(0.99, mean = 0, sd = 1)
b = qnorm(0.975, mean = 0, sd = 1)
c = qnorm(0.95, mean = 0, sd = 1)

#2
#a
p = pnorm(-0.1, mean = 0, sd = (1/50)^(1/2), lower.tail = TRUE)
p = 2*p
p

#b
p = pnorm(-0.1, mean = 0, sd = (1/200)^(1/2), lower.tail = TRUE)
p = 2*p
p

#c
p = pnorm(-0.1, mean = 0, sd = (1/1000)^(1/2), lower.tail = TRUE)
p = 2*p
p


