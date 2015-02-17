#This function computes the inverse of the special "matrix" returned by 
#makeCacheMatrix above. If the inverse has already been calculated 
#(and the matrix has not changed), then cacheSolve should retrieve 
#the inverse from the cache.

# To test, use the following commands 
#source("makeCacheMatrix.R")
#M = makeCacheMatrix(3) (3 is an example of n, it is changable)
#source("cacheSolve.R")
#cacheSolve(M)

cacheSolve <- function(M,...){
  
  #The random matrix is created using function createMatrix
  origin <- M$createMatrix()
  
  #The inverse of the matrix is retrieved
  inverse <- M$retrieveInverse()
  
  #return both matrices for better visual convenience 
  list (origin, inverse)
}