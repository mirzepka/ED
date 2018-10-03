#KORELACJA (wyklad)
a=100
x=1:1000
eps=rnorm(1000)
y=xa*eps
plot(x,y)
cor(x,y)


#BRAK korealcji (wyklad)

a=0.1
x=seq(0,1,0.001)
eps=rnorm(1001)
y=ifelse(runif(1001)>0.5, 1, -1) * sqrt(1-x^2) + a*eps
plot(x, y)
cor(x, y)

