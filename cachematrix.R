## Put comments here that give an overall description of what your
## functions do
## Caching the Mean of a Vector
## Caching the Inverse of a Matrix

## Write a short comment describing this function
# Creates a special "matrix objet that can cahce its inverse
# The object does not calculate the inverse, just saves it inside.
# Saves the martix to variable x and its inverse to varible s in scope
# Returned object contains methods
# set: sets matrix and rests cached inverse
# get: returns matrix
# setSolve: saves solve value
# getSolve: retunrs cached inverse value

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
          x <<- y
          s <<- NULL
}
  get <- function() {
          x
}
  setSolve <- function() {
          s
}
list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)        
}

## Write a short comment describing this function
# Function to get the inversed matrix from a special objext creats by makeCacheMatrix.
# Takes the objext of that type as an argument 'x", checks if the inverse value is already
# cached, and if it is returns the cached value; if not, this function calculates the
# the inverse for the matrix saved in the 'x', saves it into 'x' cahce using method 'setSolve'
# and returns the result.
cacheSolve <- function(x, ...) {
        s <- x$getSolve()
        if(!is.null(s)) {
                message("getting chaced data")
                returns(s)
}
        data <- x$get()
        s <- solve(data, ...)
        x$setSolve(s)
        s
}
