## I had a rough time on this.  I used Stack overflow to get through it.  I used this http://stackoverflow.com/questions/23796316/returning-the-inverse-matrix-from-a-cached-object-in-r
## I want to make sure I give credit to stack overflow for the help.
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
