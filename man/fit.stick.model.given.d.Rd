% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_fitting_functions.R
\name{fit.stick.model.given.d}
\alias{fit.stick.model.given.d}
\title{Fit the stickbreaking model to data for a given value of d}
\usage{
fit.stick.model.given.d(geno.matrix, fit.matrix, d.here, wts = c(2, 1),
  run.regression)
}
\arguments{
\item{geno.matrix}{Genotype matrix generated in
\code{\link{generate.geno.matrix}} or read in}

\item{fit.matrix}{Fitness matrix generated in
\code{\link{simulate.stick.data}} or read in}

\item{d.here}{The value of d estimates are based on}

\item{wts}{Vector of weights to weight genotypes by. Used when
\code{\link{generate.geno.weight.matrix}} is called (see that function).
Default is \code{c(2,1)}, meaning weight single-mutation genotypes twice as heavily as others.
Alternatively, vector of weigths corresponding to geno.matrix can be provided.}

\item{run.regression}{\code{TRUE/FALSE} Run regression analysis when fitting model. See details.}
}
\value{
List:\cr
 [[1]] \code{u.hats} are the estimated stickbreaking
  coefficients \cr
 [[2]] \code{R2} is proportion of fitness variation
  explained by model. Does not include wild type in calculation.\cr
 [[3]] \code{sig.hat} is estimate of sigma \cr
 [[4]] \code{logLike} is log-likelihood of the data under the fitted model. \cr
 [[5]] \code{regression.results} List of results when regressing effects of mutations against the backgroun fitness
of mutations (see details). [[1]] \code{p.vals} gives p-value of each mutation, [[2]] \code{lm.intercepts} gives
estimated intercept for mutation, [[3]] \code{lm.slopes} gives slope for each mutation, [[4]] \code{P} is the
sum of the log of p-values. This is the summary statistic.
}
\description{
Fit the stickbreaking model to data for a given value of d
}
\details{
Note that the coefficient estimates are obtained by weighting. The
  default is to give wild type to single mutation genotypes twice the weight
  as all other comparisions based on the assumption that wild type is know
  with much lower error than the other genotypes. Alternatively, a vector of
  weights can be used with length the same as the number of genotypes in geno.matrix. \cr

  In addition to R-squared we assess
  model fit by doing linear regression of background fitness against effect. When the model
  generating data and analyzing data are the same, the expected slope is zero and the p-values
  are uniform(0,1). The results from those regressions are returned in \code{regression.results}. \cr
 \code{run.regression} If you are doing simualtions to assess parameter estimation only, you don't need to run
 regression. If you are using this function to generate data for model fitting, then this should be set to \code{TRUE}.
}

