\name{design.alpha}
\alias{design.alpha}
%- design.alpha.
\title{ Alpha design type (0,1) }
\description{
  Creates alpha designs starting from the alpha design fixing under
  the 4 series formulated by Patterson and Williams.
  }
\usage{
design.alpha(trt, k, r, serie = 2, seed = 0, kinds = "Super-Duper")
}
\arguments{
  \item{trt}{ Treatments}
  \item{k}{ size block }
  \item{r}{ Replications }
  \item{serie}{ number plot, 1: 11,12; 2: 101,102; 3: 1001,1002 }
  \item{seed}{ seed }
  \item{kinds}{ method for to randomize }
}
\details{

Parameters for the alpha design:
I. 	r=2, k <= s;
II.	r=3, s odd, k <= s;
III.r=3, s even, k <= s-1;
IV.	r=4, s odd but not a multiple of 3, k<=s

r= replications
s=number of blocks
k=size of block
Number of treatment is equal to k*s

}
\value{
  \item{parameters }{list}
  \item{statistics }{dataframe}
  \item{sketch }{list}
  \item{book }{dataframe}
}
\references{ 
 H.D. Patterson and E.R. Williams. Biometrika (1976) 
 A new class of resolvable incomplete block designs. printed in Great Britain. 
 Online: http://biomet.oxfordjournals.org/cgi/content/abstract/63/1/83 
 }
\author{ Felipe de Mendiburu }

\seealso{\code{\link{design.ab}}, \code{\link{design.split}},\code{\link{design.bib}}, 
\code{\link{design.crd} }, \code{\link{design.cyclic} }, \code{\link{design.dau} },
\code{\link{design.graeco}}, \code{\link{design.lattice}}, \code{\link{design.lsd}},
\code{\link{design.rcbd}}, \code{\link{design.strip}} }

\examples{
library(agricolae)
#Example one
trt<-1:30
t <- length(trt)
# size block k
k<-3
# Blocks s
s<-t/k
# replications r
r <- 2
outdesign<- design.alpha(trt,k,r,serie=2)
book<-outdesign$book
plots<-book[,1]
dim(plots)<-c(k,s,r)
for (i in 1:r) print(t(plots[,,i]))
outdesign$sketch
# Example two 
trt<-letters[1:12] 
t <- length(trt)
k<-3
r<-3
s<-t/k
outdesign<- design.alpha(trt,k,r,serie=2)
book<-outdesign$book
plots<-book[,1]
dim(plots)<-c(k,s,r)
for (i in 1:r) print(t(plots[,,i]))
outdesign$sketch
}
\keyword{ design }% __ONLY ONE__ keyword per line
