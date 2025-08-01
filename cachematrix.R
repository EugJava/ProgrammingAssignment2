makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL  
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() in
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...) 
  x$setInverse(inv)
  inv
}
