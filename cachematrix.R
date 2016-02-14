## This function creates a special "matrix" object that can cache its inverse 

## This is my "matrix" object function

makeCacheMatrix <- function(x = matrix()) {
	inv = NULL
	set = function(y) {
		x <<- y
		inv <<- NULL
	}
	get = gunction() x
	setinv = function(inverse) inv <<- inverse
	getinv = function() inv
	list(set=set, get=get, setinv=setinv, getinv=getinv)
	
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv = x$getinv()
	if (!is.null(inv)){
	}
	mat.data = x$get()
	inv = solve(mat.data, ...)
	x$setinv(inv)
	return(inv)
}
