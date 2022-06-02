####code used for parasite transgen paper####
setwd("~/Dropbox/Sun's data/Parasite plasticity")
data=read.csv("parasite.transgen.exp.data.csv",header=T)

####load packages####
library(lme4)
library(car)
library(survival)
library(coxme)
library(emmeans)

####parasite fitness####
#Proportion of infection
model=glmer(terminal.infection~rearing.temp+current.temp+(1|spore.source),binomial,data=data)

#Total spore yield per host 
model=glmer(log(total.spore.count.controlling.for.volume+1)~rearing.temp+current.temp+(1|spore.source),gaussian,data=data[data$terminal.infection=="1",])

#Proportion of spore maturation 
model=glmer(prop.of.spore.maturation~rearing.temp+current.temp+(1|spore.source),binomial,data=data[data$terminal.infection=="1",])

#Mature spore yield per host 
model=glmer(log(mature.spore.count.controlling.for.volume+1)~rearing.temp*current.temp+(1|spore.source),gaussian,data=data[data$terminal.infection=="1",])

#post-hoc comparisons for mature spore yield per host among treatments while controlling for current or rearing temperatures
posthoc=emmeans (model,  ~  current.temp|rearing.temp, adjust="tukey")
pairs(posthoc)

posthoc=emmeans (model,  ~ rearing.temp|current.temp, adjust="tukey")
pairs(posthoc)

####host fitness####
#fecundity
model=glmer(fecundity~rearing.temp+current.temp+(1|spore.source),poisson,data=data[data$terminal.infection=="1",])

#Survival
model=coxme(Surv(lifespan,status)~rearing.temp+current.temp+(1|spore.source),data=data[data$terminal.infection=="1",])
