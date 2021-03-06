get_gsid <- function(name){
  
  pacman::p_load(httr, rvest)
  
  name <- gsub(" ", "+", name, fixed = TRUE)
  
  text <- paste0("https://scholar.google.com/scholar?hl=en&as_sdt=0%2C5&q=", name) %>% 
    read_html() %>% 
    html_nodes(., ".gs_rt2")
  
  dcat <- strsplit(as.character(text), "(user=)|&")[[1]][2] 
  
  return(dcat)
  
}