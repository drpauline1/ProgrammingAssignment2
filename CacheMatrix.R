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
makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
> cachemean <- mean(1:15)
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,
get = get,
setInverse = setInverse,
getInverse = getInverse)
}
cacheSolve: This function computes the inverse of the special "matrix" returned by makeCachematrix above. 
If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. 
cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!is.null(inv)) {
message("getting cached data")
return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
}


[1] 8
