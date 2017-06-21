\name{plotSplom}
\alias{plotSplom}
\title{Plot MCMC Scatterplot Matrix}
\description{
  Plot scatterplots of multiple Markov chain Monte Carlo chains. This is
  a diagnostic plot for deciding whether parameters are confounded. When
  parameter estimates are highly dependent on each other, it may
  undermine conclusions based on MCMC results of that model.
}
\usage{
plotSplom(mcmc, axes=FALSE, between=0, div=1, log=FALSE, base=10, \dots)
}
\arguments{
  \item{mcmc}{MCMC chains as a data frame or \code{mcmc} object.}
  \item{axes}{whether axis values should be plotted.}
  \item{between}{space between panels.}
  \item{div}{denominator to shorten values on the y axis.}
  \item{log}{whether values should be log-transformed.}
  \item{base}{logarithm base.}
  \item{\dots}{passed to \code{pairs()}.}
}
\value{Null, but a plot is drawn on the current graphics device.}
\note{
  The \code{Args} function from the \pkg{gdata} package is recommended
  for reviewing the arguments, instead of \code{args}.
}
\seealso{
  \code{\link{pairs}} is the underlying drawing function, and
  \code{\link[lattice]{splom}} is a similar trellis plot.

  \code{\link{plotTrace}}, \code{\link{plotAuto}},
  \code{\link{plotCumu}}, and \code{plotSplom} are diagnostic plots.

  \code{\link{plotDens}} and \code{\link{plotQuant}} are posterior
  plots.

  \code{\link{plotMCMC-package}} gives an overview of the package.
}
\examples{
plotSplom(xpar, pch=".")
plotSplom(xpro, axes=TRUE, between=1, div=1000, main="Future biomass",
          cex.labels=1.5, pch=".", cex=3)
}
% Graphics
\keyword{hplot}
% Statistics
\keyword{ts}
