## Sources ----
## To minimize troubleshooting while teaching this lecture, I went ahead and
## provided the data used for the interactive lab in a single easy-to-access
## location but *THESE ARE NOT MY DATA*. These data come from the following
## sources.
library(tidyverse)
library(here)
library(janitor)

### Datasaurus Dozen ----
### Created by Alberto Cairo
### https://blog.revolutionanalytics.com/2017/05/the-datasaurus-dozen.html
### https://www.rdocumentation.org/packages/datasauRus/versions/0.1.6
dd <- datasauRus::datasaurus_dozen %>% 
    as_tibble()

### Gapminder, NYC scores, heights, WaPo vaccination data ----
### https://rafalab.github.io/dsbook/introduction-to-data-visualization.html
gap <- dslabs::gapminder %>% 
    filter(year %in% c(seq(1960, 2015, 5), 2016)) %>% 
    as_tibble()

heights <- dslabs::heights %>% 
    as_tibble()

alg_scores <- dslabs::nyc_regents_scores %>% 
    as_tibble() %>% 
    select(algebra_score = score, integrated_algebra) %>% 
    filter(!is.na(integrated_algebra)) %>%
    uncount(weights = integrated_algebra) 

wapo_vac <- dslabs::us_contagious_diseases %>% 
    as_tibble()

save(alg_scores,
     dd,
     gap,
     heights,
     wapo_vac,
     check_data,
     file = here("data", "vis_lecture_data.rda"))
