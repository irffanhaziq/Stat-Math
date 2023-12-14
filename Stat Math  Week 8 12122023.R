getwd()
x <- 1:10
y <- x^2
dat <- data.frame(col1=x, col2=y)
print(dat)

x <- 1:10
y <- x^2
dat <- data.frame(col1=x, col2=y)
print(dat$col1)

names(dat)
names(dat) <- c("x","y")
names(dat)

View(dat)
fix(dat)

TestScore = read.table(file.choose(),header = TRUE,sep=",")

library(psych)
summary(TestScore)
describe(TestScore)


x <- c(3,2,2,4,2,1,2,2,3,4)
table(x)
mean(TestScore$Score)
mean(TestScore$IQ)
median(TestScore$Score)
median(TestScore$IQ)
table(x)
names(table(x))[which.max(table(x))]
quantile(TestScore$Score)
quantile(TestScore$Score, probs=c(0.1,0.9))
var(TestScore$Score)
sd(TestScore$Score)
max(TestScore$Score) - min(TestScore$Score)
range(TestScore$Score)


quantile(TestScore$Score, c(0.25,0.75))
IQR(TestScore$Score)
library(e1071)
skewness(TestScore$Score)
hist(TestScore$Score)
kurtosis(TestScore$Score)
