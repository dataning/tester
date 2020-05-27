change_theme <- function(q){
  
  # RStudio must use dev version
  rstudioapi::addTheme(q, apply = TRUE, force=TRUE)
  
}