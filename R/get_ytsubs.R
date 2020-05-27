get_ytsubs <- function(q){
  
  require(youtubecaption)
  
  dcat <- get_caption(q)
  
  (dcat2 <- c(dcat$text) %>% str_c(collapse = ", "))

  # return results
  return(dcat2)
  
}
