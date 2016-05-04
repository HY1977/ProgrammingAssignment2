## > data<-makeCacheMatrix(matrix(rnorm(25),5,5))
## > data<-makeCacheMatrix(matrix(rnorm(25),5,5))
## > cacheSolve(data)
##            [,1]        [,2]        [,3]        [,4]       [,5]
## [1,]  0.8004703  1.10192731  1.24448161 -1.04348292  1.6611317
## [2,]  0.5163287  0.16114939  0.09424709 -0.70295915  0.3631238
## [3,]  0.2136279 -0.16578757  0.05434266  0.04593782  0.3293081
## [4,] -0.2853123  0.06870559  0.66259847 -0.39087301  0.6507323
## [5,] -0.8939585 -0.35960531 -0.98057843  0.53295949 -0.4290921

cacheSolve <- function(x, ...) {
        
        m <- x$getinvert()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        data <- x$get()
        m <- solve(data,...)
        x$setinvert(m)
        m

}
