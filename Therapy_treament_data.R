# Problem A11
# The data
Y<- cbind(c(28,4,41,12),c(45,12,44,7),c(29,5,20,3),c(26,2,20,1))
colnames(Y)<-c("ProgressiveDisease","NoChange","PartialRemission","CompleteRemission")
therapy <- c("S","S","A","A")
gender <- rep(c("M","F"),2)

# This is how you can fit a baseline category logit model
library(nnet)
multinom(Y~1)

# This his how you can fit a cummulative logit model

library(VGAM)
vglm(Y~1,propodds(reverse=F))

##################
# Problem A12
Y <- c(76,160,6,25,114,181,11,48)
G <- factor(c("M","M","M","M","F","F","F","F"),levels=c("M","F"))
I <- factor(c("Yes","Yes","No","No","Yes","Yes","No","No"),levels=c("Yes","No"))
H <- factor(c("Yes","No","Yes","No","Yes","No","Yes","No"),levels=c("Yes","No"))
GSS <- data.frame(cbind(Y,G,I,H))
