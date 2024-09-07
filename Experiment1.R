#Experiment1
#Q1 max and min of vector
num=c(5,10,15,20,25,30)
num
print(paste("maximum value of vector is: ",max(num))
print(paste("minimum value of vector is: ",min(num))

#Q2 find factorial of num by taking input from user 
num=as.integer(readline(prompt("Enter the number: ")))
factorial=1
#check no is negative, zero or positive 
if (num<0) {print("factorial does not exist")}
else if (num==0) {print("factorial value = 1")}
else 
{
  for(i in 1:num) 
  { factorial=factorial*i }
  print(paste("the fact of ", num, "is", factorial))
}

#Q3 n terms of fibonacci sequence
# taking n as input user 
nterm=as.integer(readline(prompt ("Enter the number: "))) 
#first two terms 
n1=0 
n2=1
count=2 
#check if number of terms is valid
if(nterm<0) 
{
  print("enter positive number")
}
else if(nterm==1) 
{
  print("Fibonacci sequence is: ")
  print(n1)
}
else 
{
  print("Fibonacci sequence is: ") 
  print(nl) 
  print(n2) 
  while (count<nterm)
  {
    nth= n1+n2
    print(nth) 
    #update values
    n1 = n2 
    n2=nth 
    count count+1 
  }
} 

#Q5 plot graph
plot(1,3)  
plot(c(1,3),c(2,7))
plot(1:10)
plot(1:10,cex=2) #increas size of input
plot(1:10,type="l")
plot(1:10, main="My Graph", xlab="x-axis", ylab="y-axis")