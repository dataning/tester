get_mktjobs <- function(){
  
  pacman::p_load(tidyverse, seymour)
  
  jobs <- "feed/http://www.jobs.ac.uk/jobs/marketing/?format=rss" %>% 
    feedly_stream(.) %>% 
    feedly_continue(., 5) %>% 
    unnest(cols = c(alternate, categories, tags), names_sep = "_")
  
  glimpse(jobs)
  
}

