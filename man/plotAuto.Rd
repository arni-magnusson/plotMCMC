\name{plotAuto}
\alias{plotAuto}
\title{Plot MCMC Autocorrelation}
\description{
  Plot Markov chain Monte Carlo autocorrelation over a range of lag
  values. This is a diagnostic plot for deciding whether a chain needs
  further thinning.
}
\usage{
plotAuto(mcmc, thin=1, log=FALSE, base=10, main=NULL, xlab="Lag",
         ylab="Autocorrelation", lty=1, lwd=1, col="black", \dots)
}
\arguments{
  \item{mcmc}{MCMC chain(s) as a vector, data frame or \code{mcmc}
    object.}
  \item{thin}{interval to subsample chain(s), or 1 to keep chain
    intact.}
  \item{log}{whether values should be log-transformed.}
  \item{base}{logarithm base.}
  \item{main}{main title.}
  \item{xlab}{x-axis label.}
  \item{ylab}{y-axis label.}
  \item{lty}{line type.}
  \item{lwd}{line width.}
  \item{col}{line color.}
  \item{\dots}{passed to \code{autocorr.plot()}, \code{title()} and
    \code{axis()}.}
}
\value{Null, but a plot is drawn on the current graphics device.}
\note{
  The \code{Args} function from the \pkg{gdata} package is recommended
  for reviewing the arguments, instead of \code{args}.
}
\seealso{
  \code{\link[coda]{autocorr.plot}} is the underlying plotting function,
  and \code{\link[coda]{window.mcmc}} is used to optionally thin the
  chain(s).

  \code{\link{plotTrace}}, \code{plotAuto}, \code{\link{plotCumu}}, and
  \code{\link{plotSplom}} are diagnostic plots.

  \code{\link{plotDens}} and \code{\link{plotQuant}} are posterior
  plots.

  \code{\link{plotMCMC-package}} gives an overview of the package.
}
\examples{
plotAuto(xpar$R0)
plotAuto(xpar$R0, thin=10)
plotAuto(xpar, lag.max=50, ann=FALSE, axes=FALSE)
}
% Graphics
\keyword{hplot}
% Statistics
\keyword{ts}
