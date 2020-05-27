get_pubtrend <- function(name){
  
  pacman::p_load(ggplot2, httr, rvest, scholar)
  
  name <- gsub(" ", "+", name, fixed = TRUE)
  
  dcat <- paste0("https://scholar.google.com/scholar?hl=en&as_sdt=0%2C5&q=", name) %>% 
    read_html() %>% 
    html_nodes(., ".gs_rt2")
  
  strsplit(as.character(dcat), "(user=)|&")[[1]][2] %>% 
    get_citation_history() %>% 
    ggplot() + 
    aes(year, cites) + 
    geom_line() + 
    geom_point()
  
}