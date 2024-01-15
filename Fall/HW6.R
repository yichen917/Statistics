test <- function(x,alpha,H,df){
  t_df = length(x)-1
  mean = mean(x)
  sd = sd(x)
  t = (mean-H)*(df^0.5)/sd
  if( pt(t,t_df) > qt(p=alpha/2,t_df) && pt(t,t_df) < qt(p=1-alpha/2,t_df)){
    print("do not reject H0")
  }else{
    print("reject H0")
  }
}

data = c(57,63,68,45,71,71)
test(data,0.05,60,6)
