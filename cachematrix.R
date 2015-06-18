# For Realz

## Put comments here that give an overall description of what your
## functions do

## setting matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
    
  }
  get <- function() x
  setsolve <- function(s) inverse <<- s
  getsolve <- function() inverse
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  inverse <- x$getsolve()
  inverse
  if(!is.null(inverse)) {
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setsolve(inverse)
  inverse
}