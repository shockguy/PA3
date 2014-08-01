#This is a read in of data and plot of mortatlity 
#rates for heart attack
dir<-"./rprog-data-ProgAssignment3-data/"
datafile<-"outcome-of-care-measures.csv"
readin<-paste(dir,datafile,sep="")
outcomes <- read.csv(readin,header=TRUE,colClasses="character")
print("The name of column 11 is:")
names(outcomes[11])
outcomes[,11]<-as.numeric(outcomes[,11])
hist(outcomes[,11])


