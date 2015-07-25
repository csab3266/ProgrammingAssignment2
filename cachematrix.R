## Put comments here that give an overall description of what your
## functions do

## This function has 4 subfunctions:
## 1) get: return the matrix
## 2) set: set the matrix
## 3) getinv and setinv: store and return the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get =get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function
## Checks first if the inverse matrix exists and is not NULL, in this case it returns the cached matrix
## Otherwise will create the inverse matrix

cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
