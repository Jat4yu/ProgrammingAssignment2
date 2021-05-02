## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function 
## Sets value of matrix
## Gets value of matrix
## Sets Inverse of matrix
## Gets Inverse of Matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
  x <<- y
  inv <<- NULL
}
get <- function() x
setInverse <- function(solveMatrix) inv <<-solveMatrix
getInverse <- function() inv
list(set = set,get = get, setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function
## This function calculates the inverse of a matrix with the above function
## If the inverse has already been calculated then it gets it from cache and skips computation
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
