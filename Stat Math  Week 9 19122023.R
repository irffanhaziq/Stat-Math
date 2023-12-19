Fibonacci <- c(1,1,2,3,5,8,13,21)
plot(Fibonacci)
?plot.default()
?par()

plot(Fibonacci, # the data to plot
     main = "The first 8 Fibonacci numbers", # the title
     xlab = "Position in the sequence", # x-axis label
     ylab = "The Fibonacci number", # y-axis label
     xlim = c(0,10), # x-axis region
     ylim = c(0,25), # y-axis region
     font.axis = 2, # bold text for numbering
     font.lab = 2, # bold text for labels
     col.lab = "red",
     type = "b",
     col ='magenta',
     cex=0.5,
     lwd =0.6
     # red colour for labels
)


x <- c(2,5,4,3,2,6,4)
y <- c(5,3,6,7,1,2,7)
plot(x, col="red", type="o", ylim=c(0,10), ylab="Values")
points(y, col="blue", type="o", lty=2, pch=2)

plot(x, col="red", type="o", ylim=c(0,10), ylab="Values")
points(y, col="blue", type="o", lty=2, pch=2)
legend(x = "topright", # put the legends at top right
       inset = 0.02, # use 2% inset
       legend = c("x","y"), # legends for each lines/points
       col = c("red","blue"), # colours for each lines/points
       lty = c(1,2), # line type for each lines/pts
       pch = c(1,2), # point characters
)


curve(sin(x)-cos(x), from=0, to=7, col="magenta",
      lty=2,n=101)

x <- seq(from=0, to=7, length.out=101)
y <- sin(x)-cos(x)
plot(x, y, type='l', lty=2, col="magenta")


TestScore = read.csv(file.choose())
plot(x=TestScore$Score, y=TestScore$IQ,
     main="Test score vs IQ",
     xlab="Test score", ylab="IQ")

plot(IQ~Score, data=TestScore,
     main="Test score vs IQ",
     xlab="Test score", ylab="IQ")

pairs(~Score+IQ+StudyHours+GPA, data=TestScore)
hist(TestScore$Score,
     breaks = c(60,70,80,90,100),
     probability = TRUE)

hist(TestScore$Score,
     breaks = c(60,70,80,90,100),
     probability = TRUE,
     density =10,
     angle = 60,
     border = "black",
     col = 'magenta',
     labels= TRUE,
     ylim =c(0,0.05),
     main = "Histogram of Test Score",
     xlab = 'score',
     ylab ='mark')

boxplot(Score~Class, data=TestScore)
ScoreA = TestScore$Score[TestScore$Class=="A"]
ScoreB = TestScore$Score[TestScore$Class=="B"]
boxplot(ScoreA, ScoreB, names = c("A","B"),
        ylab="Score")

x <- c(10,12,4,6,7,10)
barplot(height=x,
        names.arg=c("Mon","Tue","Wed","Thu","Fri","Sat"),
        col=rainbow(6)
)
layout(matrix(c(1,1,2,3),nrow=2,byrow=TRUE)) # set the layout
hist(TestScore$Score) # first plot
plot(Score~IQ, data=TestScore) # second plot
boxplot(Score~Class, data=TestScore) # third plot
layout(1) # reset layout


##Toturial

year <- 2012:2019
engineering <- c(20397, 21432, 22206, 20778, 22362,
                 23669, 23400, 24137)
science <- c(10680, 11561, 11690, 10592, 11858, 13100,
             11796, 12267)
technology <- c(5124, 6679, 6828, 6200, 9553, 10809,
                11396, 10682)

plot(engineering~year)
plot(engineering~year,
     main = "Number Of Engineering Student for 2012 to 2019",
     xlab = " Year",
     ylab = " Number Of Engineering Student")

plot(engineering~year,
     main = "Number Of Engineering Student for 2012 to 2019",
     xlab = " Year",
     ylab = " Number Of Engineering Student",
     type = "o")

plot(engineering~year,
     main = "Number Of Engineering Student for 2012 to 2019",
     xlab = " Year",
     ylab = " Number Of Engineering Student",
     type = "o",
     col = "red",
     cex = 2,
     lty =2,
     lwd =2,
     pch = 2,
     xlim = c(2012,2020),
     ylim = c(5000,25000))
points(year,science, col="blue", type="o", lty=2, pch=2)
points(year,technology, col="darkgreen", type="o", lty=2, pch=2)

legend(x = "bottomright", # put the legends at top right
       inset = 0.02, # use 2% inset
       legend = c("engineering","science","technology"), # legends for each lines/points
       col = c("red","blue","green"), # colours for each lines/points
       lty = c(2,2,2), # line type for each lines/pts
       pch = c(2,2,2))

data(mtcars)
mtcars
hist(mtcars$mpg)
boxplot(mpg~am, data=mtcars, names =c("Autometic","Manual"))
plot(mpg~disp, data=mtcars)
pairs(~mpg+disp+hp+wt, data = mtcars)

table(mtcars$gear)
barplot(table(mtcars$gear))



sales = read.csv(file.choose())
str(sales)
pairs(~Sales+Land.value+Improvement.value, data = sales,
      main = "Scatterplot between sales, land, and
      improvement values")
sales$total= sales$Land.value+sales$Improvement.value
plot(Sales~total, data=sales,
     main ="Sales vs Total Value of the Propety",
     xlab ="Total Value of the Propety",
     ylab ="Sales")
min(sales$total)
max(sales$total)

curve(-16.5 + 1.36*(x), from=0, to=2500, col="magenta",
      lty=2,n=101,add=TRUE)
legend(x = "bottomright",
       inset = 0.02, 
       legend = c("Fitted Line"),
       col = c("magenta"),
      lty = 2)

residuals <- sales$Sales - (-16.5+1.36*sales$total)
hist(residuals, freq=FALSE)

curve(dnorm(x,mean=mean(residuals), sd=sd(residuals)),from= -400,to =600, add=TRUE,col='red')

      