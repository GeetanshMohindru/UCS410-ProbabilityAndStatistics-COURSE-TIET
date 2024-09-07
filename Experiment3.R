#Experiment3
#Q1
n<- 12
p <- 1/6
#method1
prob_7_to_9 <- pbinom(9, size =n, prob = p) - pbinom(6, size =n, prob = p)
prob_7_to_9
#method2
diff(pbinom(c(6,9), size=n ,prob=p))

#Q2
p= pnorm(84, mean=72, sd=15.2 ,lower.tail=FALSE) - pnorm(100, mean=72, sd=15.2 ,lower.tail=FALSE)
p

#Q3
#part(a)
dpois(0,5)
#part(b)
diff(ppois(c(47,50), lambda=50))

#Q4
dhyper(3,17,250-17,5)

#Q5
#part(a)

#part(b)
n <- 31
p <- 0.447
k<-0:n
pmf<-dbinom(k, size=n , prob =p)
plot(k, pmf, type="h",lwd=2 , col="blue", main="probabilitymass function of X", xlab="no of students(k)",ylab="P(X<=k)")
#part(c)
maen_X <-n*p
variance_X <- n*p*(1-p)
std_dev_X <- sqrt(variance_X)
#part(d)
mean_X
variance_X
std_dev_X
