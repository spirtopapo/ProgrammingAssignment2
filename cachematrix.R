## Calculate functions that catch the inverse of a matrix


## This function creates a special "matrix" object that can cache its inverse and
## contains a function that
## sets the value of the matrix
## gets the value of the matrix
## sets the value of the inverse matrix
## gets the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  i<- NULL
  set <- function(y){
    x<<-y
    i<<-NULL
}
get<- function() x
setinverse<- function(inv) i<<- inv
getinverse<- function() i
list(
  set=set,
  get=get,
  setinverse=setinverse,
  getinverse=getinverse
)
}

## computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        i<- x$getinverse()
        if(!is.null((i)){
          message("get cached data")
          return(i)
        }
        m<- x$get()
        i<- solve(m, ...)
        x$setinverse(i)
        i
}
