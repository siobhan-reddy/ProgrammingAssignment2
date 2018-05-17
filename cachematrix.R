## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##cache function -makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) { 
  
  in <- NULL
  set <- function(y) {
    x <<- y
    in <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) in <<- inverse
  getinverse <- function() in
  list(set = set, get = get,
  setinverse = setinverse,
  getinverse = getinverse)
}


## Write a short comment describing this function

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {

  in <- x$getinverse()
  if(!is.null(in)) {
  message("getting cached data")
  return(in)
  }
  data <- x$get()
  in <- inverse(data, ...)
  x$setinverse(in)
  in
}
