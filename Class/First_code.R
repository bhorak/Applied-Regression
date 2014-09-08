## read data
hardness.data = read.table('Hardness Data.txt',header=T,sep=",")

## display data
hardness.data
print(hardness.data)

## check the names of data
names(hardness.data)

## check the dimension
dim(hardness.data)

## look for particular part
hardness.data[1,]
hardness.data[1:5,]
hardness.data[,2]
hardness.data[1:5,2]

hardness.data$Temp

## attach data
attach(hardness.data)
Temp
Hard

## combine data 
TH = c(Temp,Hard)
TH

TH = cbind(Temp,Hard)
TH

## simple calculation
Temp2 = 2*Temp
Temp3 = Temp -1
Temp4 = Temp/10
Temp5 = Temp4^2

cbind(Temp2, Temp, Temp3, Temp4, Temp5)

## statistical computation

Temp.mean = mean(Temp)
Temp.mean

Temp.sum = sum(Temp)
Temp.sum
Temp.sum/14

Temp.sd = sd(Temp)
Temp.sd

Temp.var = var(Temp)
Temp.var
Temp.sd^2

## A little bit advanced ones, just for fun !!!

hardness.data.mean = apply(hardness.data,2,mean)
hardness.data.mean

hardness.data.sd = apply(hardness.data,2,sd)
hardness.data.sd

hardness.data.var = apply(hardness.data,2,var)
hardness.data.var

hardness.data.sd^2

## always do not forget to detach data

detach(hardness.data)

Temp

hardness.data$Temp

## cues of next chapter
attach(hardness.data)

plot(hardness.data$Temp,hardness.data$Hard,pch=23, bg='red', cex=2)

hardness.lm = lm(Hard ~ Temp,data=hardness.data)
abline(hardness.lm$coef,lwd=2,col='orange')

detach(hardness.data)

