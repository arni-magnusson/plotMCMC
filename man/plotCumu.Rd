\name{plotCumu}
\alias{plotCumu}
\title{Plot MCMC Cumulative Quantiles}
\description{
  Plot Markov chain Monte Carlo cumulative quantiles. This is a
  diagnostic plot for deciding whether the chain has converged.
}
\usage{
plotCumu(mcmc, probs=c(0.025,0.975), div=1, log=FALSE, base=10,
         main=NULL, xlab="Iterations", ylab="Value", lty.median=1,
         lwd.median=2, col.median="black", lty.outer=2, lwd.outer=1,
         col.outer="black", \dots)
}
\arguments{
  \item{mcmc}{MCMC chain(s) as a vector, data frame or \code{mcmc}
    object.}
  \item{probs}{vector of outer quantiles to draw, besides the median.}
  \item{div}{denominator to shorten values on the y axis.}
  \item{log}{whether values should be log-transformed.}
  \item{base}{logarithm base.}
  \item{main}{main title.}
  \item{xlab}{x-axis label.}
  \item{ylab}{y-axis label.}
  \item{lty.median}{line type of median.}
  \item{lwd.median}{line width of median.}
  \item{col.median}{color of median.}
  \item{lty.outer}{line type of outer quantiles.}
  \item{lwd.outer}{line width of outer quantiles.}
  \item{col.outer}{color of outer quantiles.}
  \item{\dots}{passed to \code{cumuplot()}, \code{title()} and
    \code{axis()}.}
}
\value{Null, but a plot is drawn on the current graphics device.}
\note{
  The \code{Args} function from the \pkg{gdata} package is recommended
  for reviewing the arguments, instead of \code{args}.
}
\seealso{
  \code{\link[coda]{cumuplot}} is the underlying plotting function, and
  \code{\link{quantile}} is called iteratively to calculate the
  cumulative quantiles.

  \code{\link{plotTrace}}, \code{\link{plotAuto}}, \code{plotCumu}, and
  \code{\link{plotSplom}} are diagnostic plots.

  \code{\link{plotDens}} and \code{\link{plotQuant}} are posterior
  plots.

  \code{\link{plotMCMC-package}} gives an overview of the package.
}
\examples{
plotCumu(xpar$R0, main="R0")
plotCumu(xpar$cSfull, main="cSfull")
plotCumu(xpar, probs=c(0.25,0.75), ann=FALSE, axes=FALSE)
}
% Graphics
\keyword{hplot}
% Statistics
\keyword{ts}
