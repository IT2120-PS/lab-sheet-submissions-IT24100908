setwd("C:\\Users\\Desktop\\IT24100908")
getwd()
#Question1
#i
#punif = to find uniform distribution
#lower.tail = TRUE means X <= 10 
punif(10,min = 0, max = 30, lower.tail = TRUE)

#ii
#lower.tail = FALSE means X > 20  
punif(20,min = 0, max = 30, lower.tail = FALSE)


#Question2
#i
#pexp = to find exponential distribution
pexp(3,rate = 0.5,lower.tail = TRUE)

#ii
pexp(4,rate = 0.5,lower.tail = FALSE)

#iii
pexp(4,rate = 0.5,lower.tail = TRUE) - pexp(2,rate = 0.5,lower.tail = TRUE)

#Question3
#i
1 - pnorm(37.9,mean = 36.8, sd=0.4, lower.tail = TRUE)

#ii
pnorm(36.9,mean = 36.8, sd=0.4, lower.tail = TRUE) - pnorm(36.4, mean = 36.8, sd = 0.4, lower.tail = TRUE)

#iii
qnorm(0.012, mean = 36.8, sd = 0.4, lower.tail=TRUE)

#iv
qnorm(0.01,mean = 36.8, sd=0.4, lower.tail = FALSE)

#Exercise
#Question1
punif(25, min=0, max=40) - punif(10, min=0, max=40)

#Question2
pexp(2, rate=1/3)

#Question3
#i
1 - pnorm(130, mean=100, sd=15)

#ii
qnorm(0.95, mean=100, sd=15)


