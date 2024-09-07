#Experiment2
#Q1(a)
#CREATE CHEST WITH 100 COINS
chest <- c(rep("gold",20), rep("silver",30), rep("bronze",50))
#draw 10 cooins from the chest
sample(x=chest, size=10)

#Q1(b)
sample(c("succ", "fail"), 10, replace=T, prob=c(0.9,0.1))

#Q2
M=50;
probability1=1-(factorial(365))/(((365)^M)*factorial(365-M));
print(probability1)
N=1000;
sum=0;
for(val in 1:N)
{
  a=as.integer(any(duplicated(sample(365,M,replace = TRUE))))
  sum=sum+a;
  print(a)
}
probability=sum/N;
print(probability)

M=1
N=1000;
probability=0
while (probabilty<0.5)
{
  M=M+1
  if(M>365)
  {
    break
  }
  sum=0;
  for (val in 1:N)
  {
    as=as.integer(any(duplicated(sample(365,M,replace = TRUE))))
    sum=sum+a;
  }
  probability=sum/N;
}
print(paste(probability,M))

#Q3
#define function for Bayes Theorem
bayesTheorem <- function(pA, pB, pBA)
{
  pAB <- pA*pBA/pB
  return(pAB)
}

pRain <- 0.2
pCloudy <- 0.4
pCloudyRain <- .85

a=bayesTheorem(pRain, pCloudy, pCloudyRain)
print(a)

#Q5
getmode <- function(v)
{
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)

result <- getmode(v)
print(result)

#seperate question
charv <- c("o", "it", "the", "it", "it")

result <- getmode(charv)
print(result)