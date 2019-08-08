\name{plotMCMC-package}
\alias{plotMCMC-package}
\alias{plotMCMC}
\docType{package}
\title{MCMC Diagnostic Plots}
\description{
  Markov chain Monte Carlo diagnostic plots. The purpose of the package
  is to combine existing tools from the \pkg{coda} and \pkg{lattice}
  packages, and make it easy to adjust graphical details.
}
\details{
  \emph{Diagnostic plots:}
  \tabular{ll}{
    \code{\link{plotTrace}} \tab trends\cr
    \code{\link{plotAuto}}  \tab thinning\cr
    \code{\link{plotCumu}}  \tab convergence\cr
    \code{\link{plotSplom}} \tab confounding of parameters
  }
  \emph{Posterior plots:}
  \tabular{ll}{
    \code{\link{plotDens}}  \tab posterior(s)\cr
    \code{\link{plotQuant}} \tab multiple posteriors on a common y axis
  }
  \emph{Examples:}
  \tabular{ll}{
    \code{\link{xpar}} \tab model parameters\cr
    \code{\link{xrec}} \tab recruitment\cr
    \code{\link{xbio}} \tab biomass\cr
    \code{\link{xpro}} \tab future projected biomass
  }
}
\note{
  \code{browseVignettes()} shows a vignette with all the example plots.

  The plot functions assume that MCMC results are stored either as
  a plain \code{\link{numeric}} vector (single chain) or in a
  \code{\link{data.frame}} (multiple chains). The
  \code{\link[coda]{mcmc}} class is also supported.
}
\author{Arni Magnusson and Ian Stewart.}
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
  The \pkg{coda} package is a suite of diagnostic functions and plots
  for MCMC analysis, many of which are used in \pkg{plotMCMC}.

  Many \pkg{plotMCMC} graphics are \code{trellis} plots, rendered with
  the \pkg{lattice} package.

  The functions \code{Args} and \code{ll} (package \pkg{gdata}) can be
  useful for browsing unwieldy functions and objects.
}
