## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##creates a matrix 
##set the value of the matrix
##get the value of the matrix
##solve the value of the inverse
##get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inverse <<- solve
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

##calculates the inverse of the matrix created with the above function
##if the inverse has already been calculated
##it gets the inverse from the cache and skips the computation
##otherwise, it calculates the inverse and sets the value in the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  inverse  
}
