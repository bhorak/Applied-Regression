## define function
std<-function(x) sd(x)/sqrt(length(x))
inter<-function(x,y) {
    x$lower<-1:length(x$mpg)
    x$upper<-1:length(x$mpg)
    for (i in 1:length(x$mpg)) {
        x$lower[i]<-x$mpg[i]-y$mpg[i]
        x$upper[i]<-x$mpg[i]+y$mpg[i]
        
    }
    x
}
