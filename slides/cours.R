a <- 2
a = 3
a[1]
a[2]
U = runif(n=20, 0, 1)
set.seed(1)
U = runif(n=20, 0, 1)
U[1]
1:4
7:13
seq(7,13,by=.1)
seq(13,7)
U[1:6]
U>.5
U[U>.5]

x = exp(1)
y = x
x = exp(2)
class(x)

(U>.5)*7
(3/10-1/10) == (7/10-5/10)
(3/10-1/10) - (7/10-5/10)
1/0
0/0

U
V = U[7:9]
names(U) = LETTERS[1:20]
U[c("A","G")]
U[c(1,7)]

M = matrix(U,5,4)
dim(M) = c(4,5)

rm(list="x")
rm(list=ls())

X = LETTERS[1:4]
x = as.factor(X)
x[3] = "F"

u = cut(U,breaks = c(-1,.2,.6,2))
table(u)

L = list(U = runif(10),
         D = as.Date("2022/12/25"),
         x = "le cours, c'est est super")
L[[2]]

g = function(x){
   a_2 =2*x
  return(x*(1-x))}
O = optimize(f = g,interval = c(0,1), maximum=TRUE)

vx = seq(0,1,by=.1)
vy = rep(NA,length(vx))
for(i in 1:length(vx)) vy[i] = g(vx[i])

plot(vx,vy,type="l")
points(vx,vy,col="red",pch=19)
polygon(vx,vy,col="yellow")
U=runif(200)
H = hist(U)

loc = "http://freakonometrics.free.fr/superheroes.RData"
download.file(loc, "superheroes.RData")
load("superheroes.RData")
str(superheroes)

loc = "http://freakonometrics.free.fr/gapminderDataFiveYear.txt"
download.file(loc, "base.txt")
base = read.delim("base.txt")

str(base)
sbase = base[base$country == "Canada",]
plot(sbase$year,sbase$lifeExp)
base[base$lifeExp < 40,]

A = aggregate(base$lifeExp,by=list(base$country),max)
names(A) = c("pays","esp_vie")
