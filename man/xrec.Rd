\name{xrec}
\alias{xrec}
\docType{data}
\title{MCMC Results for Recruitment}
\description{
  Markov chain Monte Carlo results from stock assessment of cod
  (\emph{Gadus morhua}) in Icelandic waters, showing estimated
  recruitment by year.
}
\usage{xrec}
\format{
  Data frame containing 1000 rows and 33 columns (years 1970 to 2002).
}
\details{
  Each column contains the results of 1 million MCMC iterations, after
  thinning to every 1000th iteration.

  The MCMC analysis started at the best fit, so no burn-in period was
  discarded.
}
\note{
  Recruitment is the size of a cohort (year class), in this case
  thousands of one-year-olds.

  For example, \code{xrec$"1980"} is the estimated number of
  one-year-olds in 1981, the cohort that hatched in 1980.

  This data frame is a subset of the \code{\link[scape]{xmcmc}} list
  from the \pkg{scape} package, which contains further documentation
  about the data and model. More specifically, \code{xrec <- xmcmc$R}.

  The MCMC analysis was run using the \dfn{AD Model Builder} software
  (\url{http://www.admb-project.org/}).
}
\references{
  Fournier, D. A., Skaug, H. J., Ancheta, J., Ianelli, J., Magnusson,
  A., Maunder, M. N., Nielsen, A. and Sibert, J. (2012) AD Model
  Builder: using automatic differentiation for statistical inference of
  highly parameterized complex nonlinear models. \emph{Optimization
    Methods and Software}, \bold{27}, 233--249.

  Magnusson, A., Punt, A. E. and Hilborn, R. (2013) Measuring
  uncertainty in fisheries stock assessment: the delta method,
  bootstrap, and MCMC. \emph{Fish and Fisheries}, \bold{14}, 325--342.
}
\seealso{
  \code{\link{xpar}} (parameters), \code{xrec} (recruitment),
  \code{\link{xbio}} (biomass), and \code{\link{xpro}} (projected future
  biomass) are MCMC data frames to explore.

  \code{\link{plotMCMC-package}} gives an overview of the package.
}
\examples{
plotQuant(xrec, names=substring(names(xrec),3), div=1000, xlab="Year",
          ylab="Recruitment (million one-year-olds)")
}
