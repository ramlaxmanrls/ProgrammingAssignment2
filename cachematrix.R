## the below functions caches the inverse of a matrix


## This function creates an object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInv <- function(inverse) {inv <<- inverse}
  getInv <- function() {inv}
  list(set = set, get = get, setInv = setInv, getInv = getInv)

}


## This function computes the inverse of the matrix returned by the above function.
## If the inverse has already been calculated, then the below function retrieves the inverse from the cache.(given that if the matrix is not changed)

cacheSolve <- function(x, ...) {
  inv <- x$getInv()
  if(!is.null(inv)){
    message("below is the cached inverse")
    return(inv)
  }
  a <- x$get()
  inv <- solve(a, ...)
  x$setInv(inv)
  inv
        ## Returns a matrix that is the inverse of 'x'
}



