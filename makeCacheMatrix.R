#This function creates a special "matrix" object that can cache its inverse
# n is the size of the matrix (nxn)
makeCacheMatrix <- function(n = 2L) {
  
  #initialize a matrix with n rows and n cols
  M <- matrix(data = NA, nrow = n, ncol = n)
  
  #function to create an invertible matrix
  createMatrix <- function(){
    repeat{
      for (i in 1:n){
        for (j in 1:n)
          #for simplicity, value of each matrix entity is limited from -9 to 9
          #those values are integer
          M[i,j] = sample(-9:9, 1)
      }
      #cond: matrix is invertible iff its determinant is not equal to 0
      if(det(M) != 0) break
    }
    return(M)
  }
  
  #function to retrieve the inverse matrix. 
  retrieveInverse <- function(M){
     solve(M)
  }
  
  #return a list of two functions
  list(createMatrix = createMatrix, retrieveInverse = retrieveInverse)

}