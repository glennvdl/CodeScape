## Put comments here that give an overall description of what your
## functions do

## The result of this function will be a list containing the following fucntions as 
## elements: set/get/setinvert/getinvert. It will contain the cached inverse of matrix
## m

makeCacheMatrix <- function(x = matrix()) {

  ## Initialize m which will serve as inverse of matrix x
  m <- NULL
  ## Formula that sets the matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  ## Formula that gets the matrix
  get <- function() x
  
  ## Formula that inverts the matrix using solve
  setinvert <- function(solve) m <<- solve
  
  ## Formula that gets the inverted matrix
  getinvert <- function() m
  
  ## Creates a lists of the previously used formula's
  list(set = set, get = get,
       setinvert = setinvert,
       getinvert = getinvert)
  
}

## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
       
  ##Return inverted matrix if it's set, otherwise return message
  m <- x$getinvert ()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  ##Get the matrix
  data <- x$get()
  
  ##Get the inverted matrix
  m <- solve(data, ...)
  x$setinvert(m)
  m
}

