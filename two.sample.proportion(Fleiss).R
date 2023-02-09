#Power and Sample Size for Two-Sample Binomial Test
#Fleiss JL, Tytun A, Ury HK (1980): A simple approximation for calculating sample sizes for comparing independent proportions. Biometrics 36:343–6.
Hmisc::bpower(
  p1=0.70,
  p2=0.45,
  n1=120,
  n2=60,
  alpha=0.05
)
