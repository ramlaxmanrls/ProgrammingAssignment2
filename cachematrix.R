## the below functions caches the inverse of a matrix


## This function creates an object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## This function computes the inverse of the matrix returned by the above function.
## If the inverse has already been calculated, then the below function retrieves the inverse from the cache.(given that if the matrix is not changed)

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached inverse")
    return(inv)
  }
  a <- x$get()
  inv <- solve(a, ...)
  x$setInverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}



