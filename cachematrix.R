## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## COMMENT: Creating a  matrix element, setting the inverse, saving it in cache

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL

  set <- function(y) {
    x <<- y
    m <<- NULL
  }

  get <- function() x

  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m

        
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)

}


## Write a short comment describing this function
## COMMENT: Checks to see if matrix in cache, if so retrieve, get and return inverse. 
  
cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getmatrix()

  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }

  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
  
}
