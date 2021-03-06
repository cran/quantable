% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CV.R
\name{CV}
\alias{CV}
\title{compute CV for each row in matrix}
\usage{
CV(data, top = 30, na.rm = TRUE)
}
\arguments{
\item{data}{matrix}

\item{top}{remove top (default 30) CV}

\item{na.rm}{default TRUE}
}
\description{
Typically used to create and violin plot
}
\examples{
dat <- matrix(rnorm(1000,10,5), ncol=20)
dim(dat)
cv <- CV(dat, top=5)
length(cv)
stopifnot(length(cv) == 45)
hist(cv)

}
