## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()) {
  met <- NULL
  set <- function(b){
    a <<- b
    met <<- NULL
  }
  get <- function() a
  setit <- function(solve) met<<- solve
  getit <- function() met
  list(set=set, get=get, setit=setit, getit=getit)
}


## Write a short comment describing this function

cacheSolve <- function(a = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
  met <- a$getit()
  if(!is.null(met)){
    message("getting cached data")
    return(met)
  }
  matrix <- a$get()
  met <- solve(matrix, ...)
  a$setit(met)
  met
}
