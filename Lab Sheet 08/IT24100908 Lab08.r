setwd("C:\\Users\\IT24100908\\Desktop\\IT24100908")
getwd()

data<- read.table("Data - Lab 8.txt",header= TRUE)
fix(data)
attach(data)

#Question 01

popmean<-mean(Nicotine)
popvar<-var(Nicotine)

#Question 02
samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

#Question 03
samplemean<-mean(s.means)
samplevars<-var(s.means)

#Question 04
popmean
samplemean

#Question 05
truevar=popvar/5
truevar
samplevars

##Exercise
#Part 1

data2<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data2)

#1
pop_mean<-mean(Weight.kg.)
pop_sd<-sd(Weight.kg.)

cat("Population Mean (True Mean):",pop_mean,"\n")
cat("Population Standard Deviation (True SD):",pop_sd,"\n")

#2
samples<-c()
sample_names <- c()

for (i in 1:25){
  S <- sample(Weight.kg.,6,replace =TRUE)
  samples <- cbind(samples,S)
  sample_names<-c(sample_names, paste('S',i))
}

colnames(samples)= sample_names
s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)

#3

samplemean<-mean(s.means)
samplesd<-sd(s.means)

pop_mean
pop_sd

truesd=pop_sd/6
samplesd
