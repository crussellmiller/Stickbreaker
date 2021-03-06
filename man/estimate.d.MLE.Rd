% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d_estimation_fnxs.R
\name{estimate.d.MLE}
\alias{estimate.d.MLE}
\title{Find MLE of d}
\usage{
estimate.d.MLE(geno.matrix, fit.matrix, d.range, accuracy = 0.001,
  wts = c(2, 1))
}
\arguments{
\item{geno.matrix}{Genotype matrix generated in
\code{\link{generate.geno.matrix}}}

\item{fit.matrix}{Fitness matrix generated in
\code{\link{simulate.stick.data}}}

\item{d.range}{Interval of d to search for maximum over}

\item{accuracy}{\code{tol} to send \code{optimize} function}

\item{wts}{Vector of weights to weight genotypes by. Used when
\code{\link{generate.geno.weight.matrix}} is called (see that function).
Default is \code{c(2,1)}, meaning weight single-mutation genotypes twice as heavily as others.
Alternatively, vector of weigths corresponding to geno.matrix can be provided.}
}
\value{
MLE of d
}
\description{
Find MLE of d
}
\details{
Maximizes the function \code{\link{calc.stick.logLn}} using \code{\link{optimize}}
}

