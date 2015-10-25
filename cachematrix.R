## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Takes an invertible matrix and returns a list of
## functions to store and retrieve the raw matrix
## as well as the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
  
}


## Write a short comment describing this function

## Takes a makeCacheMatrix function and returns the cached inverse
## of the matrix, if it already exists, otherwise calculates the 
## inverse of the matrix and stores it for later use.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)){
    
    message("getting cached data")
    return (i)
    
  }
  
  data <- x$get()
  i <- solve(data)
  
  x$setinverse(i)
  i
}
