## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  girish <- NULL
  # Set Matrix
  set <- function( matrix ) {
    x <<- matrix
    girish <<- NULL
  }
  # Get Matrix
  get <- function() {
    x
  }
  # Set Inverse
  sinv <- function(inv) {
    girish <<- inv
  }
  # Get Inverse
  ginv <- function() {
    girish
  }
  list(set = set, get = get,sinv = sinv,ginv = ginv)
}


## Write a short comment describing this function
## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$ginv()
## Just return the inverse if its already set
  if( !is.null(m) ) {
    message("get cached data")
    return(m)
  }
  data <- x$get()
   ## Set the inverse to the object
  x$sinv(m)
  ## Return the matrix
  m
}
