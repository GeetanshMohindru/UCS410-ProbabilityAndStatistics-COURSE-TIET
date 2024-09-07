#Experiment4
#Q1
x <- c(0,1,2,3,4)
probx <- c(0.41, 0.37, 0.16, 0.05, 0.01)

#method-1
expval <- sum(x*probx)
print(expval)
#method-2
expval <- weighted.mean(x,probx)
print(expval)
#method-3
expval <- c(x%*%probx)
print(expval)

#Q2
f <- function(t){t*0.1*exp(-0.1*t)}
expval <- integrate(f, lower = 0, upper = Inf)
print(expval$value)

#Q3
x <- c(0,1,2,3)
probx <- c(0.1, 0.2, 0.2, 0.5)
y <- 10*x-12
proby <- probx
expval <- sum(y*proby)
print(expval)

#Q4
f1 <- function(t){t*0.5*exp(-abs(t))}
m1 <- integrate(f1, lower = 1, upper = 10)
print(m1$value)
f2 <- function(t){t^2*0.5*exp(-abs(t))}
m2 <- integrate(f2, lower = 1, upper = 10)
print(m2$value)
var = m2 - (m1)^2
print(var)

#Q5 Probability Distribution of Y=X^2
f <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
x = as.integer(readline(prompt = "Enter the value of x: "))
#--------first run till here--------

y <- x^2
proby <- f(y)
print(proby)
#expected value and variance of Y for X=1,2,3,4,5
x <- c(1,2,3,4,5)
y <- x^2
proby <- f(y)
print(proby)
#Expected value
ExpVal <- sum(y*proby)
print(ExpVal)
#Variance = E( (y - E(y) )^2 )
M <- ExpVal
y1 <- (y-M)^2
proby1 <- f(y1)
print(proby1)
VarVal <- sum(y1*proby1)
print(VarVal)