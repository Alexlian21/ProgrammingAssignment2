## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#The Function will use the "makeVector" function and cache it's inverse

makeCacheMatrix <- function(x = matrix()) {
  #create empty place to store and set the matrix
  m <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  #set the cache function
  get <- function() x
  setinverse <- function(inv) inverse <<- inv
  getinverse <- function() inverse
  list(set = set,  get = get,  setinv = setinverse,  getinv =  getinverse)
}


## Write a short comment describing this function
#The function will calculate the result from "makeCacheMatrix" function.
cacheSolve <- function(x, ...) {
  inverse <- x$getinv()
  #check the cache result
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  #showing result
  data <- x$get()
  inverse <- solve(data)
  x$setinv(inverse)
}
        ## Return a matrix that is the inverse of 'x'

