# 1
Mean_q1_t <- function(df){
  q1 <- qt(0.25,df)
  sample <- rt(20,df)
  print(mean(sample[which(sample<q1)]))
}

# 2
check <- function(k){
  sample <- rpois(5,k)
  mean <- mean(sample)
  if(mean>k){print("over")}
  else if (mean==k){print("equal")}
  else{ print("under")}
  
}

# 3
check2 <- function(k){
  sample <- rpois(5,k)
  mean <- mean(sample)
  ifelse(mean>k,return("over"),ifelse(mean==k,return("equal"),return("under")))
}

