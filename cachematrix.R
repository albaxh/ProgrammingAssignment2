## Put comments here that give an overall description of what your
## functions do

## This function takes as argument a matrix and returns a vector that serves as
## a cache for the matrix and its inverted respective

makeCacheMatrix <- function(m = matrix()) {
    invertedM <- NULL
    set <- function(n) {
        m <<- n
        invertedM <<- NULL
    }
    get <- function() m
    setInvertedMatrix <- function(inverted) invertedM <<- inverted
    getInvertedMatrix <- function() invertedM
    list(set = set, get = get,
         setInvertedMatrix = setInvertedMatrix,
         getInvertedMatrix = getInvertedMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
