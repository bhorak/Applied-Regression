library(datasets); data(mtcars); require(stats); require(graphics)

plot(mtcars[,c(1,3,4,5,6,7)])
## plotssss
require(gridExtra)
plot1<-qplot(wt,mpg,data=data)+geom_smooth(method = "lm")+ggtitle("MPG vs Weight")
plot2<-qplot(disp,mpg,data=data)+geom_smooth(method = "lm")+ggtitle("MPG vs Displacement")
plot3<-qplot(hp,mpg,data=data)+geom_smooth(method = "lm")+ggtitle("MPG vs Horsepower")
plot4<-qplot(drat,mpg,data=data)+geom_smooth(method = "lm")+ggtitle("MPG vs Rear Axle Ratio")
plot5<-qplot(qsec,mpg,data=data)+geom_smooth(method = "lm")+ggtitle("MPG vs Quarter Mile Time")
grid.arrange(plot1,plot2,plot3,plot4,plot5,ncol=3)

## factorize 
transmission<-factor(mtcars$am,labels=c("Automatic","Manual"))
data<-mtcars
data$am<-transmission
p1 <- 
    ggplot(data, aes(x=Time, y=weight, colour=Diet, group=Chick)) +
    geom_line() +
    ggtitle("Growth curve for individual chicks")

## Barplot
means.barplot <- qplot(x=am, y=mpg, fill=variable,
                       data =data_2 , geom="bar", stat="identity",
                       position="dodge")

## Good Graph
qplot(mpg,wt,data=data,color=am)




##Agreggate-find means
data_2<-aggregate(mpg~am,mean,data=data)


std<-function(x) sd(x)/sqrt(length(x))
data_3<-aggregate(mpg~am,std,dat=data)
data_2$lower<-c(data_2$mpg[1]-data_3$mpg[1],data_2$mpg[2]-data_3$mpg[2])
data_2$upper<-c(data_2$mpg[1]+data_3$mpg[1],data_2$mpg[2]+data_3$mpg[2])




## add SE's to bar plot
means.barplot <- qplot(x=am, y=mpg, fill=am,data=data_2, geom="bar", stat="identity",position="dodge")
means.barplot + geom_errorbar(aes(ymax=upper, ymin=lower), position=position_dodge(0.9),data=data_2)

## Summary
aggregate(mpg~am,summary,data=data)


