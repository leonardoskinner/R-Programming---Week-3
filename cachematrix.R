## These functions can cache the inverse of a matrix, and if the inverse has already
## been calculated, then the cachesolve should retrieve the inverse from the cache.

## makeCacheMatrix
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    n <- NULL
  set_matrix <- function(z) {
    x <<- z
    n <<- NULL
  }
  get_matrix <- function() x
  setinv_matrix <- function(solve) n <<- solve
  getinv_matrix <- function() n
  list(set_matrix = set_matrix, get_matrix = get_matrix,
       setinv_matrix = setinv_matrix,
       getinv_matrix = getinv_matrix)
}

## cacheSolve
## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  n <- x$getinv_matrix()
  if(!is.null(n)) {
    message("getting cached data")
    return(n)
  }
  data <- x$get_matrix()
  n <- solve(data, ...)
  x$setinv_matrix(n)
  n
}
