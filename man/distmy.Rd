% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distmy.R
\name{distmy}
\alias{distmy}
\title{distance among matrix columns with freely choosable distance function}
\usage{
distmy(x, func, init = NA, diag = TRUE)
}
\arguments{
\item{x}{data}

\item{func}{function taking 2 arrays x, y}

\item{init}{how to initialize the output matrix}

\item{diag}{should the diagonal be also computed}
}
\value{
matrix with dist[i,j] = func(x[,i],[x,j])
}
\description{
distance among matrix columns with freely choosable distance function
}
\examples{
mat = matrix(rnorm(10*5000),ncol=10)
redist = distmy(mat,function(x,y){mean(abs(x-y))},init=NA,diag=FALSE)
image(redist)
redist = distmy(mat,cor,init=0,diag=FALSE)
image(redist)
redist = distmy(mat,function(x,y){ks.test(x,y)$p.value},init=1,diag=TRUE)
image(redist)
hist(uppertriang(redist))
range(uppertriang(redist))
which(redist < 0.05 , arr.ind = TRUE)
}
