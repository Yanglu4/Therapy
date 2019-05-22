# The therapy data
Y<- cbind(c(28,4,41,12),c(45,12,44,7),c(29,5,20,3),c(26,2,20,1))
colnames(Y)<-c("ProgressiveDisease","NoChange","PartialRemission","CompleteRemission")
therapy <- c("S","S","A","A")
gender <- rep(c("M","F"),2)
