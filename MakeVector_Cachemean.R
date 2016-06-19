> makevector<-1:15
> list(makeVector)
Error: object 'makeVector' not found
> makeVector<- 1:15
> list(makeVector)
[[1]]
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15

> sapply(makeVector, mean)
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
> my_data<-makeVector
> mean(my_data)
[1] 8
> get <- mean(1:15)
> get
[1] 8
> setmean <- function(mean) m <<- mean
> setmean <- (1:15)mean
Error: unexpected symbol in "setmean <- (1:15)mean"
> setmean <- mean(1:15)
> setmean
[1] 8
> cachemean <- mean(1:15)
> cachemean
[1] 8