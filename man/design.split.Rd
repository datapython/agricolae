\name{design.split}
\alias{design.split}
%- design.rcbd.
\title{ Split Plot Design }
\description{
  It generates split plot design.
  "Random" uses the methods of number generation in R.
  The seed is by set.seed(seed, kinds).
}
\usage{
design.split(trt1, trt2,r=NULL, design=c("rcbd","crd","lsd"),serie = 2,
seed = 0, kinds = "Super-Duper", first=TRUE)
}

\arguments{
  \item{trt1}{ Treatments in Plots}
  \item{trt2}{ Treatments in Subplots}
  \item{r}{ Replications or blocks }
  \item{design}{ Experimental design }
  \item{serie}{ number plot, 1: 11,12; 2: 101,102; 3: 1001,1002 }
  \item{seed}{ seed }
  \item{kinds}{ method for to randomize }
  \item{first}{ TRUE or FALSE - randomize rep 1}
}
\details{
  kinds <- c("Wichmann-Hill", "Marsaglia-Multicarry", "Super-Duper",
  "Mersenne-Twister", "Knuth-TAOCP", "user-supplied",  "Knuth-TAOCP-2002",
  "default" )
}
\value{
  \item{parameters }{list}
  \item{book }{dataframe}
}
\references{ Statistical Procedures for Agricultural Research. 
Kwanchai A. Gomez, Arturo A. Gomez. John Wiley & Sons, new York, 1984 }
\author{ Felipe de Mendiburu }

\seealso{\code{\link{design.ab}}, \code{\link{design.alpha}},\code{\link{design.bib}}, 
\code{\link{design.crd} }, \code{\link{design.cyclic} }, \code{\link{design.dau} },
\code{\link{design.graeco}}, \code{\link{design.lattice}}, \code{\link{design.lsd}},
\code{\link{design.rcbd}}, \code{\link{design.strip}} }

\examples{
library(agricolae)
# 4 treatments and 5 blocks in split-plot
t1<-c("A","B","C","D")
t2<-c(1,2,3)
outdesign <-design.split(t1,t2,r=3,serie=2,seed=45,kinds ="Super-Duper")#seed=45
book<-outdesign$book# field book
# write in hard disk
# write.table(book,"book.txt", row.names=FALSE, sep="\t")
# file.show("book.txt")

}
\keyword{ design }% at least one, from doc/KEYWORDS

