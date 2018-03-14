## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Similar to shown in instructions of assignment , this function has 4 functions.

makeCacheMatrix <- function(x = matrix()) {
  invmat <- NULL
  set <- function(y){
    x<<-y
    invmat<<- NULL
  }
  get <- function() x
  setinv <- function(im) invmat <<- im
  getinv <- function() invmat
  list(set = set , get = get , setinv = setinv , getinv = getinv)

}


## Write a short comment describing this function
##This function uses matplotlib for finding inverse of matrix.
##argument to cacheSolve is of type makeCacheMatrix
##The function checks for cached inverse , if present , returns it else calculates and stores 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  library(matlib)
  m <- x$getinv()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  else
  {
    data<-x$get()
    x$setinv(inv(data))
    x$getinv()
    
  }
}

