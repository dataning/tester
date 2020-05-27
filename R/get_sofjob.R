get_sofjob <- function(){
  
  pacman::p_load(tidyverse, seymour)
  
  jobs <- paste0("feed/https://stackoverflow.com/jobs/feed") %>% 
    feedly_stream(.) %>% 
    feedly_continue(., 100) 
  
  glimpse(jobs)
  
}

