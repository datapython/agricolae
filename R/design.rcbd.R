`design.rcbd` <-
function (trt, r,serie=2,seed=0,kinds="Super-Duper",first=TRUE,continue=FALSE )
{
number<-10
if(serie>0) number<-10^serie
ntr <- length(trt)
if (seed == 0) {
genera<-runif(1)
seed <-.Random.seed[3]
}
set.seed(seed,kinds)
parameters<-list(design="rcbd",trt=trt,r=r,serie=serie,seed=seed,kinds=kinds)
mtr <- sample(trt, ntr, replace = FALSE)
block <- c(rep(1, ntr))
for (y in 2:r) {
block <- c(block, rep(y, ntr))
mtr <- c(mtr, sample(trt, ntr, replace = FALSE))
}
if(!first) mtr[1:ntr]<-trt
if (!first)
	mtr[1:ntr] <- trt
plots <- block*number+(1:ntr)
book <- data.frame(plots, block = as.factor(block), trt = as.factor(mtr))
names(book)[3] <- c(paste(deparse(substitute(trt))))
names(book)[3]<-c(paste(deparse(substitute(trt))))
if(continue){
start0<-10^serie
if(serie==0) start0<-0
book$plots<-start0+1:nrow(book)
}
outdesign<-list(parameters=parameters,book=book)
return(outdesign)
}
