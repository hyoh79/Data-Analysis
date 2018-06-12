myID <- function(name, belongs, email){
  cat("*","\t\t",name,"\t\t\t  ","*\n")
  cat("*",belongs,"*\t\t\n")
  cat("*","\t\t",email,"\t\t","*\n")
  affiliation <- "Ajou Univ."
  browser()
}


name<-readline()
belongs<-readline()
email<-readline()

cat("****************************************************\n")
cat("*                                                  *\n")

affiliation<-myID(name, belongs, email)

cat("*","\t\t",affiliation,"\t\t","*\n")

cat("*                                                  *\n")
cat("****************************************************\n")

