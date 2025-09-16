setwd("C:\\Users\\Desktop\\IT24100908")
getwd()
#Q1
# Parameters
n <- 50
p <- 0.85

# Probability of at least 47 students passed
prob_47<- 1 - pbinom(46, size = n, prob = p)
print(prob_47)


#Q2
#X is the number of customer calls received in one hour.
# Poisson parameter
lambda <- 12

# Probability of exactly 15 calls
prob_15_calls <- dpois(15, lambda)
print(prob_15_calls)