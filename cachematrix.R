# following two functions are used to cache the inverse of a matrix.

# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(y){
  x<<-y
  i<<-NULL
}
get<-function() x
smtrx<-function(inv) i<<- inv
gmtrx<-function() i
list(
set=set, get=get,
   smtrx=smtrx,
   gmtrx=gmtrx
)
}

# The following function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.

# This function assumes that the matrix is always invertible.

cacheSolve <- function(x=matrix(), ...) {
    i<-x$gmtrx()
    if(!is.null(i)){
      message("getting cached data")
      return(i)
    }
    matrix<-x$get()
    i<-inv(matrix, ...)
    x$smtrx(m)
    i
}
