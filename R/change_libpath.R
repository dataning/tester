change_libpath <- function(){
  
  myPaths <- .libPaths()
  
  myPaths <- c(myPaths[2], myPaths[1]) 
  
  .libPaths(myPaths)
  
}