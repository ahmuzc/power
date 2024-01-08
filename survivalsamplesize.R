a <- 0.05
b <- 0.2
p1 <- 0.64 #ECMO+IBAP
p2 <- 0.83 #ECMO
s1 <- 1-p1
s2 <- 1-p2
lam1 <- -log(s1)
lam2 <- -log(s2)
delta <- lam2/lam1
r <- 2/3 #n1/n2
acr <- 24 #招募时间mo
flw <- 1 #随访时间1mo
mf <- acr/2+flw
n.event <- function(a,b,delta,r){
  n = ((qnorm(1-a/2)+qnorm(1-b))*(r*delta+1)/(sqrt(r)*(delta-1)))^2
  return(n)
}
n.total <- function(nevent,lam1,lam2,mf,r){
  n = nevent/(
    (r*(1-exp(-lam1*mf))/(r+1))+
      ((1-exp(-lam2*mf))/(r+1))
  )
  return(n)
}
