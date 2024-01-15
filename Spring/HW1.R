#1.
# (1)
attach(iris)
data1 <- data.frame(Species,Sepal.Length)
boxplot(Sepal.Length ~ Species)
# 圖表顯示，三個品種的花瓣長度的全距、中位數均有顯著的差異

# (2)
# H0 : u1 = u2 = u3, where u is three species
data1.aov <- aov(Sepal.Length~factor(Species), data = data1)
# show ANOVA table
summary(data1.aov)
qf(0.95,2,147)
# F value of data = 119.3 > qf(0.95,2,147)=3.057621
# --> Reject H0 --> 三種品種的花瓣有顯著差異

# (3)
plot(data1.aov)

# (4)
pairwise.t.test(Sepal.Length,Species,p.adjust.method="bonferroni")

# 2
# (1)
head(CO2)
ut.aov <- aov(uptake~factor(Type)*factor(Treatment),data=CO2)
summary(ut.aov)
# (2)
plot(ut.aov)
# (3)
interaction.plot(Type, Treatment, uptake, col = 2:3)
