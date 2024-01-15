# statistics HW1

# 1.
h = c(160,174,158,170,186,164,159,152,170,173,176,185,164,183,164)
people = length(h)

average = mean(h)
std = sd(h)

maximum = max(h)
minimum = min(h)
range = maximum - minimum

Q1 = quantile(h,0.25)
med = median(h)
Q3 = quantile(h,0.75)

# 2.
y = c(1:30)
answer = sum(y^4)

# 3.
x = seq(10,-2,-0.4)
sum = sum(x)

# 4.
a = c(1,1,1,4,7,5.5,16,49,30.25)
A = matrix(a,3,3)
det = det(A)
