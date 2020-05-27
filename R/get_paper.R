get_paper <- function(q){
  
  # build url
  url <- paste0('https://scholar.google.com/scholar?hl=en&q=', q)
  
  # sanitize url
  url <- URLencode(url)
  
  # get results
  res <- read_html(url) %>%           # get url
    html_nodes('div.gs_ri h3 a') %>%  # select titles by css selector 
    html_text()                       # extract text
  
  # return results
  return(res)
  
}