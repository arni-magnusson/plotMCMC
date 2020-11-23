\name{xpro}
\alias{xpro}
\docType{data}
\title{MCMC Results for Future Projections}
\description{
  Markov chain Monte Carlo results from stock assessment of cod
  (\emph{Gadus morhua}) in Icelandic waters, showing future projected
  biomass in tonnes.
}
\usage{xpro}
\format{
  Data frame containing 1000 rows and 4 columns (years 2004 to 2007).
}
\details{
  Each column contains the results of 1 million MCMC iterations, after
  thinning to every 1000th iteration.

  The MCMC analysis started at the best fit, so no burn-in period was
  discarded.
}
\note{
  The projections are based on a fixed harvest rate, where 25\% of the
  biomass (ages 4 and older) is caught every year.

  This data frame is a subset of the \code{\link[scape]{xproj}} list
  from the \pkg{scape} package, which contains further documentation
  about the data and model. More specifically,
  \code{xpro <- xproj$"0.25"}.

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
  \code{\link{xpar}} (parameters), \code{\link{xrec}} (recruitment),
  \code{xbio} (biomass), and \code{\link{xpro}} (projected future
  biomass) are MCMC data frames to explore.

  \code{\link{plotMCMC-package}} gives an overview of the package.
}
\examples{
plotQuant(xpro, axes=1:2, div=1000, xlab="Year",
          ylab="Biomass age 4+ (kt)")

plotSplom(xpro, axes=TRUE, between=1, div=1000, main="Future biomass",
          cex.labels=1.5, pch=".", cex=3)
}
