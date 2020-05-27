get_acjob <- function(p){
  
  pacman::p_load(tidyverse, seymour)
  
  jobs <- paste0("feed/http://www.jobs.ac.uk/jobs/", p, "/?format=rss") %>% 
    feedly_stream(.) %>% 
    feedly_continue(., 25) %>% 
    unnest(cols = c(alternate, categories, tags), names_sep = "_")
  
  glimpse(jobs)
  
}

