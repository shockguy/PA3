
#This is a function that returns the 
#"Best Hospitals in a state"

best<-function(ST,outcome) {
        dir<-"./rprog-data-ProgAssignment3-data/"
        datafile<-"outcome-of-care-measures.csv"
        readin<-paste(dir,datafile,sep="")
        outcomes <- read.csv(readin,header=TRUE,colClasses="character")
        
        octype<-c("heart attack","heart failure","pneumonia")
        occol<-list(11,17,23)
        names(occol)<-octype
        
        if(all(outcomes[,7]!=ST))
                stop("invalid state")
        
        #head(outcomes[,unlist(occol["heart attack"])])
        
        #ST<-"AL"
        
        state<-outcomes[outcomes[,7]==ST,c(2,unlist(occol[outcome]))]
        
        state[,2]=as.numeric(state[,2])
        
        bestscore<-min(state[,2],na.rm=TRUE)
                
        rv<-state[c(which(state[,2]==bestscore)),1]
        
        print("Number of best scores: ")
        print(length(rv))
        
        sort(rv)[1]

}

