\name{xbio}
\alias{xbio}
\docType{data}
\title{MCMC Results for Biomass}
\description{
  Markov chain Monte Carlo results from stock assessment of cod
  (\emph{Gadus morhua}) in Icelandic waters, showing estimated biomass
  by year in tonnes.
}
\usage{xbio}
\format{
  Data frame containing 1000 rows and 34 columns (years 1971 to 2004).
}
\details{
  Each column contains the results of 1 million MCMC iterations, after
  thinning to every 1000th iteration.

  The MCMC analysis started at the best fit, so no burn-in period was
  discarded.
}
\note{
  Biomass is the total weight of all individuals in a population, in
  this case ages 4 and older.

  This data frame is a subset of the \code{\link[scape]{xmcmc}} list
  from the \pkg{scape} package, which contains further documentation
  about the data and model. More specifically, \code{xbio <- xmcmc$B}.

  The MCMC analysis was run using the \dfn{AD Model Builder} software
  (\url{http://admb-project.org}).
}
\references{
  Fournier, D. A., Skaug, H. J., Ancheta, J., Ianelli, J., Magnusson,
  A., Maunder, M. N., Nielsen, A., and Sibert, J. (2012) AD Model
  Builder: using automatic differentiation for statistical inference of
  highly parameterized complex nonlinear models. \emph{Optimization
    Methods and Software} \bold{27}, 233--249.

  Magnusson, A., Punt, A. E., and Hilborn, R. (2013) Measuring
  uncertainty in fisheries stock assessment: the delta method,
  bootstrap, and MCMC. \emph{Fish and Fisheries} \bold{14}, 325--342.
}
\seealso{
  \code{\link{xpar}} (parameters), \code{\link{xrec}} (recruitment),
  \code{xbio} (biomass), and \code{\link{xpro}} (projected future
  biomass) are MCMC data frames to explore.

  \code{\link{plotMCMC-package}} gives an overview of the package.
}
\examples{
plotDens(xbio$"2004", points=TRUE, div=1000, main="2004\n",
         xlab="Biomass age 4+ (1000 t)", tick.number=6, strip=FALSE)

plotQuant(xbio, div=1000, xlab="Year", ylab="Biomass age 4+ (kt)")
plotQuant(xbio, style="bars", div=1000, sfrac=0, xlab="Year",
          ylab="Biomass age 4+ (kt)")
plotQuant(xbio, style="lines", div=1000, xlab="Year",
          ylab="Biomass age 4+ (kt)")
}
\keyword{datasets}
