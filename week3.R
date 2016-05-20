makeCacheMatrix <- function(a = matrix()) {
  n <- NULL
  set_matrix <- function(z) {
    a <<- z
    n <<- NULL
  }
  get_matrix <- function() a
  setinv_matrix <- function(solve) n <<- solve
  getinv_matrix <- function() n
  list(set_matrix = set_matrix, get_matrix = get_matrix,
       setinv_matrix = setinv_matrix,
       getinv_matrix = getinv_matrix)
}
  
invmatrix <- function(a, ...) {
  n <- a$getinv_matrix()
  if(!is.null(n)) {
    message("getting cached data")
    return(n)
  }
  data <- a$get_matrix()
  n <- solve(data, ...)
  a$setinv_matrix(n)
  n
}
  
