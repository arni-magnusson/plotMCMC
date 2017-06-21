\name{plotTrace}
\alias{plotTrace}
\title{Plot MCMC Traces}
\description{
  Plot Markov chain Monte Carlo traces. This is a diagnostic plot for
  deciding whether a chain shows unwanted trends.
}
\usage{
plotTrace(mcmc, axes=FALSE, same.limits=FALSE,
          between=list(x=axes,y=axes), div=1, span=1/4, log=FALSE,
          base=10, main=NULL, xlab=NULL, ylab=NULL, cex.main=1.2,
          cex.lab=1, cex.axis=0.8, cex.strip=0.8, col.strip="gray95",
          las=0, tck=0.5, tick.number=5, lty.trace=1, lwd.trace=1,
          col.trace="gray", lty.median=1, lwd.median=1,
          col.median="black", lty.loess=2, lwd.loess=1,
          col.loess="black", plot=TRUE, \dots)
}
\arguments{
  \item{mcmc}{MCMC chain(s) as a vector, data frame or \code{mcmc}
    object.}
  \item{axes}{whether axis values should be plotted.}
  \item{same.limits}{whether panels should have same x-axis limits.}
  \item{between}{list with \code{x} and \code{y} indicating panel
    spacing.}
  \item{div}{denominator to shorten values on the y axis.}
  \item{span}{smoothness parameter, passed to \code{panel.loess}}
  \item{log}{whether values should be log-transformed.}
  \item{base}{logarithm base.}
  \item{main}{main title.}
  \item{xlab}{x-axis title.}
  \item{ylab}{y-axis title.}
  \item{cex.main}{size of main title.}
  \item{cex.lab}{size of axis labels.}
  \item{cex.axis}{size of tick labels.}
  \item{cex.strip}{size of strip labels.}
  \item{col.strip}{color of strip labels.}
  \item{las}{orientation of tick labels: 0=parallel, 1=horizontal,
    2=perpendicular, 3=vertical.}
  \item{tck}{tick mark length.}
  \item{tick.number}{number of tick marks.}
  \item{lty.trace}{line type of trace.}
  \item{lwd.trace}{line width of trace.}
  \item{col.trace}{color of trace.}
  \item{lty.median}{line type of median.}
  \item{lwd.median}{line width of median.}
  \item{col.median}{color of median.}
  \item{lty.loess}{line type of loess.}
  \item{lwd.loess}{line width of loess.}
  \item{col.loess}{color of loess.}
  \item{plot}{whether to draw plot.}
  \item{\dots}{passed to \code{xyplot} and \code{panel.loess}.}
}
\value{
  When \code{plot=TRUE}, a trellis plot is drawn and a data frame is
  returned, containing the data used for plotting. When
  \code{plot=FALSE}, a trellis object is returned.
}
\note{
  The \code{Args} function from the \pkg{gdata} package is recommended
  for reviewing the arguments, instead of \code{args}.
}
\seealso{
  \code{\link[lattice]{xyplot}} and \code{\link[lattice]{panel.loess}}
  are the underlying drawing functions, and
  \code{\link[coda]{traceplot}} is a similar non-trellis plot.

  \code{plotTrace}, \code{\link{plotAuto}}, \code{\link{plotCumu}}, and
  \code{\link{plotSplom}} are diagnostic plots.

  \code{\link{plotDens}} and \code{\link{plotQuant}} are posterior
  plots.

  \code{\link{plotMCMC-package}} gives an overview of the package.
}
\examples{
plotTrace(xpar, xlab="Iterations", ylab="Parameter value",
          layout=c(2,4))
plotTrace(xpar$R0, axes=TRUE, div=1000)
}
% Graphics
\keyword{hplot}
% Statistics
\keyword{ts}
