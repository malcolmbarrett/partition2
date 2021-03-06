% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directors.R
\name{direct_distance}
\alias{direct_distance}
\alias{direct_distance_pearson}
\alias{direct_distance_spearman}
\title{Target based on minimum distance matrix}
\usage{
direct_distance(.partition_step, spearman = FALSE)

direct_distance_pearson(.partition_step)

direct_distance_spearman(.partition_step)
}
\arguments{
\item{.partition_step}{a \code{partition_step} object}

\item{spearman}{Logical. Use Spearman's correlation?}
}
\value{
a \code{partition_step} object
}
\description{
Directors are functions that tell the partition algorithm what
to try to reduce.  \code{\link[=as_director]{as_director()}} is a helper function to create new
directors to be used in \code{partitioner}s. \code{partitioner}s can be created with
\code{\link[=as_partitioner]{as_partitioner()}}.

\code{direct_distance()} fits a distance matrix using either Pearson's or
Spearman's correlation and finds the pair with the smallest distance to
target. If the distance matrix already exists, \code{direct_distance()} only
fits the distances for any new reduced variables.
\code{direct_distance_pearson()} and \code{direct_distance_spearman()} are
convenience functions that directly call the type of distance matrix.
}
\seealso{
Other directors: 
\code{\link{as_director}()},
\code{\link{direct_k_cluster}()}
}
\concept{directors}
