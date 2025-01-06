library(dplyr)
library(readr)
library(cobalt)
library(marginaleffects)
library(WeightIt)
library(flextable)
library(ggplot2)
library(officer)
library(lme4)

study_data <- ###load study data with the variables used in the study
## Paxlovid
outglm.pax <- function(outcome,#outcome of interest
                       dat.aoi,#data for modeling
                       group,
                       severity = F,
                       exposure = "Paxlovid",
                       all = T
                       
){
  dat.aoi$label <- as.factor(dat.aoi[[outcome]])
  dat.aoi$label <- ifelse(dat.aoi$label == "0",0,1)#as.numeric(dat.aoi$label)
  
  if(all == T){
    if(severity == T){
      dat.aoi <- dat.aoi %>% dplyr::select("vaccination_status_cat","variant","hispanic",
                                           "race","age","female","elixhauser_index","prior_infection",
                                           "Paxlovid","Remdesivir","severity","Steroids", "age_group",
                                           "timeFromVax","label")
      W.out <- weightit(Paxlovid ~age+female+elixhauser_index + severity +race +hispanic +prior_infection +vaccination_status_cat  ,#vaccination_status_cat
                        data = dat.aoi, estimand = "ATE" , method = "ebal")
    } else {
      dat.aoi <- dat.aoi %>% dplyr::select("vaccination_status_cat","variant","hispanic","race","age","female","elixhauser_index","Paxlovid","Remdesivir","prior_infection","Steroids","timeFromVax","label")
      print("hi")
      W.out <- weightit(Paxlovid ~age+female+elixhauser_index  +race +hispanic +prior_infection +vaccination_status_cat +Steroids,
                        data = dat.aoi, estimand = "ATE" , method = "ebal")
    }
  } 
  #bal <- bal.tab(W.out, stats = c("m", "v", "ks"), m.threshold = .05, disp.v.ratio = TRUE,poly = 1)
  bal = bal.tab(W.out, stats = c("m", "v"), thresholds = c(m = .05), disp=c("means", "sds"))
  print(bal)
  fit = glm_weightit(label ~ Paxlovid,
                     data = dat.aoi, weightit = W.out,family = binomial(logit) )
  output = avg_comparisons(fit,
                           variables = "Paxlovid",
                           comparison = "lnoravg",
                           transform = "exp") 
  
  return(output)
  
  
}

pax_pasc_all =outglm.pax("PASC.any",study_data,
                         group="all",severity = TRUE)
pax_pasc_all
table(glm_dat_cleaned_norgan$severity, glm_dat_cleaned_norgan$age_group, glm_dat_cleaned_norgan$PASC.any)








