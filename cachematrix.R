## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  # Set Matrix
  set <- function( matrix ) {
    x <<- matrix
    i <<- NULL
  }
  # Get Matrix
  get <- function() {
    x
  }
  # Set Inverse
  sinv <- function(inv) {
    i <<- inv
  }
  # Get Inverse
  ginv <- function() {
    i
  }
  list(set = set, get = get,
       sinv = sinv,
       ginv = ginv)
}


## Write a short comment describing this function
## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  x$setInverse(m)
  m
}
