## Sum of squares code

sumsq<-function(data) {
    x<-0
    for (i in 1:length(data)) {
        temp<-(data[i]-mean(data))^2
        x<-x+temp
    }
    x
}


