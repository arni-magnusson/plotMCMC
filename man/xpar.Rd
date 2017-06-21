\name{xpar}
\alias{xpar}
\docType{data}
\title{MCMC Results for Model Parameters}
\description{
  Markov chain Monte Carlo results from stock assessment of cod
  (\emph{Gadus morhua}) in Icelandic waters, showing estimated model
  parameters.
}
\usage{xpar}
\format{
  Data frame containing 1000 rows and 8 columns:
  \tabular{ll}{
    \code{R0}    \tab average virgin recruitment\cr
    \code{Rinit} \tab initial recruitment scaler\cr
    \code{uinit} \tab initial harvest rate\cr
    \code{cSleft}\tab left-side slope of commercial selectivity curve\cr
    \code{cSfull}\tab age at full commercial selectivity\cr
    \code{sSleft}\tab left-side slope of survey selectivity curve\cr
    \code{sSfull}\tab age at full survey selectivity\cr
    \code{logq}  \tab log-transformed survey catchability
  }
}
\details{
  Each column contains the results of 1 million MCMC iterations, after
  thinning to every 1000th iteration.

  The MCMC analysis started at the best fit, so no burn-in period was
  discarded.
}
\note{
  This data frame is a subset of the \code{\link[scape]{xmcmc}} list
  from the \pkg{scape} package, which contains further documentation
  about the data and model. More specifically, \code{xpar <- xmcmc$P}.

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
  \code{xpar} (parameters), \code{\link{xrec}} (recruitment),
  \code{\link{xbio}} (biomass), and \code{\link{xpro}} (projected future
  biomass) are MCMC data frames to explore.

  \code{\link{plotMCMC-package}} gives an overview of the package.
}
\examples{
plotTrace(xpar, xlab="Iterations", ylab="Parameter value",
          layout=c(2,4))
plotTrace(xpar$R0, axes=TRUE, div=1000)

plotAuto(xpar$R0)
plotAuto(xpar$R0, thin=10)
plotAuto(xpar, lag.max=50, ann=FALSE, axes=FALSE)

plotCumu(xpar$R0, main="R0")
plotCumu(xpar$cSfull, main="cSfull")
plotCumu(xpar, probs=c(0.25,0.75), ann=FALSE, axes=FALSE)

plotSplom(xpar, pch=".")

plotDens(xpar, xlab="Parameter value", ylab="Posterior density\n")
}
\keyword{datasets}
