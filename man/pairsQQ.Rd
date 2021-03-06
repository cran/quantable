% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pairsQQ.R
\name{pairsQQ}
\alias{pairsQQ}
\title{pairsplot of QQ plots}
\usage{
pairsQQ(obj, main = "")
}
\arguments{
\item{obj}{dataframe or matrix}

\item{main}{- title}
}
\description{
pairsplot of QQ plots
}
\examples{

 tmp = matrix(rep((1:100),times = 4) + rnorm(100*4,0,3),ncol=4)
pairsQQ( tmp)
}
\seealso{
\code{\link{qqplot}} and  \code{\link{pairs}}
}
