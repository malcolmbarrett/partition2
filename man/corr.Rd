% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directors.R
\name{corr}
\alias{corr}
\title{Efficiently fit correlation coefficient for matrix or two vectors}
\usage{
corr(x, y = NULL, spearman = FALSE)
}
\arguments{
\item{x}{a matrix or vector}

\item{y}{a vector. Optional.}

\item{spearman}{Logical. Use Spearman's correlation?}
}
\value{
a numeric vector, the correlation coefficient
}
\description{
Efficiently fit correlation coefficient for matrix or two vectors
}
\examples{
library(dplyr)
# fit for entire data set
iris \%>\%
  select_if(is.numeric) \%>\%
  corr()

# just fit for two vectors
corr(iris$Sepal.Length, iris$Sepal.Width)

}
