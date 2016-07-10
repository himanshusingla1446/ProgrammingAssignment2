## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## m is a matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y)
  {
    x<<-y
    m<<-NULL
  }
  get <- function()   x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)

}



## Write a short comment describing this function
#cachesove function check if inverse is already present or not ,
#if not through solve() fn it calculate the inverse of the matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
             message("getting cached data")
             return(m)
                  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
