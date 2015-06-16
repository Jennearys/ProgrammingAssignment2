## Put comments here that give an overall description of what your
## functions do

## Function that returns a list of functions that set the value of the matrix, get the value of the matrix, set the inverse and get the inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  #
  set <- function(y) {
    glob <<- y
    inv <<- NULL
  }
  get <- function() glob
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
#output list used as input to cacheSolve
}


## If a value exists in inverse variable, will return this. If not will calculate the inverse of the matrix.

cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
# if the inverse already contains a value, returns it from the cache. No further calculation required.
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inv)
  }
  #calculates the inverse of the matrix
  matrixdata <- glob$get()
  inverse<- solve(matrixdata, ...)
  
  glob$setinverse(inverse)
  
  return(inverse)
        ## Return a matrix that is the inverse of 'inverse'
}
