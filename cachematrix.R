## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function is a list with four functions, set,get,setinverse and getinverse
## The function "set" is used to set a matrix
## The function "get" is used to get the matrix that was set
## The function "setinverse" is used to set the inverse of the matrix that was set
## The function "getinverse" is used to get the inverse of the matrix that was set

makeCacheMatrix <- function(x = matrix()) {
         i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function
## This functions returns the inverse of the matrix, if the matrix has already a calculated inverse because of makeCachematrix, 
## then it will return the calculated inverse without computing the calculation again and print "getting cached data", 
## else it will calculate the inverse returning its value anda saving it in the cache 

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
        ## Return a matrix that is the inverse of 'x'
}
