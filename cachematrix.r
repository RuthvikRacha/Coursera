# The function Cache and Inverse the Matrix that was inputted.
> 
> ## functions cache the vector to load faster 
> 
> makeCacheMatrix <- function(MatInput = matrix()) {
+         InverseMatrix <- NULL
+         set <- function(y) {
+                 MatInput <<- y
+                 InverseMatrix <<- NULL
+         }
+         get <- function() MatInput
+         setInverse <- function(solve) InverseMatrix <<- solve
+         getInverse <- function() InverseMatrix
+         list(set = set,
+              get = get,
+              setInverse = setInverse,
+              getInverse = getInverse)
+ }
> 
> ## The function cached was verified "getting cached data" and showed, or Inversed by the cacheSolve
> 
> cacheSolve <- function(MatInput, ...) {
+ 
+ 
+         InverseMatrix <- MatInput$getInverse()
+         if (!is.null(InverseMatrix)) {
+                 message("getting cached data")
+                 return(InverseMatrix)
+         }
+         mat <- MatInput$get()
+         InverseMatrix <- solve(mat, ...)
+         MatInput$setInverse(InverseMatrix)
+         InverseMatrix
+         ## Return a inverted matrix if the Matrix is non-singular
+ 
+ }
