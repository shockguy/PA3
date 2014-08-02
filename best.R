#This is a function that returns the 
#"Best Hospitals in a state"

dir<-"./rprog-data-ProgAssignment3-data/"
datafile<-"outcome-of-care-measures.csv"
readin<-paste(dir,datafile,sep="")
outcomes <- read.csv(readin,header=TRUE,colClasses="character")

octype<-c("heart attack","heart failure","pneumonia")
occol<-list(11,17,23)
names(occol)<-octype

head(outcomes[,unlist(occol["heart attack"])])

ST<-"AL"

state<-outcomes[outcomes[,7]==ST,c(2,unlist(occol["heart attack"]))]

state[,2]=as.numeric(state[,2])

rv<-state[c(which(state[,2]==19.6)),1]



