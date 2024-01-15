# 1
c = rep(0,31)
c[1]=0
c[2]=1
for(i in 3:31){
  c[i] = c[i-1]+c[i-2]
}

# 2
# (1)
prob1 = 1-pbinom(45,100,0.5)
# (2)
prob2 = 1-ppois(45,50)
# (3)
prob3 = 1-pnorm(45.5,50,5)
# (4)
prob1
prob2
prob3
# Normal效果較好

# 3
# (1)
p1 = 1-pbinom(18,10000,0.002)
# (2)
p2 = 1-ppois(18,20)
# (3)
p3 = 1-pnorm(18.5,20,19.96^(1/2))
# (4)
p1
p2
p3
# Poisson效果較好，與第二題結果不同，