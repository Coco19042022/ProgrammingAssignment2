## Put comments here that give an overall description of what your
## functions do
#This pair of function able one cache and retrieve( or calculate) a matrix's inverse 
#which real reduce the operations for R 

## Write a short comment describing this function
##This function create a special matrix where you can 
#1.set the value of the matrix
#2.get the valuse of the matrix
# 3.set the value of the inverse
# 4.get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setinverse<-function(inverse) m<<-inverse
  getinverse<-function() m
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  

}


## Write a short comment describing this function
# This function retrieve the inverse if the inverse is already calculated;calculate
# the inverse if it not there

cacheSolve <- function(x, ...) {
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
