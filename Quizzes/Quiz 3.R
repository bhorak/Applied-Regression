## Question 1
data(mtcars)
fit<-lm(mpg~factor(cyl)+wt,data=mtcars)
summary(fit)

## Question 2
fit<-lm(mpg~factor(cyl),data=mtcars)
summary(fit)


## Question 3
fit<-lm(mpg~factor(cyl)*wt,data=mtcars)
summary(fit)

## Question 4
lm(mpg~I(wt*0.5)+factor(cyl),data=mtcars)

## Question 5
x <- c(0.586, 0.166, -0.042, -0.614, 11.72)
y <- c(0.549, -0.026, -0.127, -0.751, 1.344)
fit <- lm(y ~ x)
lm.influence(fit)$hat

## Question 6
fit <- lm(y~x)
lm.influence(fit)$hat
dfbetas(fit)
