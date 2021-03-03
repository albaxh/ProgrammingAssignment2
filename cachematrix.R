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


## This function takes as argument a matrix x and a cache and returns the 
## inverted matrix for x, assuming that x is a square invertable matrix. First
## it looks up the inverted matrix value in the cache and if not found
## calculates the inverted value and sets it in the cache.

cacheSolve <- function(x, cache, ...) {
    m <- cache$getInvertedMatrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x
    m <- solve(x, ...)
    cache$setInvertedMatrix(m)
    m
}
