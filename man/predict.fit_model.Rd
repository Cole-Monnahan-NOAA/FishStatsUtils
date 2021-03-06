% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_model.R
\name{predict.fit_model}
\alias{predict.fit_model}
\title{Predict density for new samples (\emph{Beta version; may change without notice})}
\usage{
\method{predict}{fit_model}(
  x,
  what = "D_i",
  Lat_i,
  Lon_i,
  t_i,
  a_i,
  c_iz = rep(0, length(t_i)),
  v_i = rep(0, length(t_i)),
  covariate_data = NULL,
  catchability_data = NULL,
  working_dir = paste0(getwd(), "/")
)
}
\arguments{
\item{x}{Output from \code{\link{fit_model}}}

\item{what}{Which output from \code{fit$Report} should be extracted; default is predicted density}

\item{t_i}{Vector of integers, providing the time (e.g., calendar year) for each observation i}

\item{a_i}{Numeric vector containing values greater than zero, providing sampled area for each
observation i;  use \code{a_i=1} for observations without a natural area measurement, while
noting that resulting densities no longer have interpretable units in that case)}

\item{c_iz}{Vector of integers ranging from 0 to the number of variables minus 1, providing the
category (e.g., species, length-bin) for each observation i}

\item{v_i}{Vector of integers ranging from 0 to the number of vessels minus 1,
providing sampling category (e.g., vessel or tow) associated with overdispersed variation for each observation i
(by default \code{v_i=0} for all samples, which will not affect things given the default values for \code{OverdispersionConfig})}

\item{covariate_data}{data frame of covariate values with columns \code{Lat}, \code{Lon}, and \code{Year}, and other columns matching names in \code{formula}; \code{Year=NA} can be used for covariates that do not change among years (e.g., depth)}

\item{catchability_data}{data-frame of covariates for use when specifying \code{Q1_formula} and \code{Q2_formula}}
}
\description{
\code{predict.fit_model} calculates predictions given new data
}
\details{
When the user does not supply \code{covariate_data}, predictions are based upon covariate values
interpolated from covariates supplied when fitting the model.  When the user does supply \code{covariate_data},
predictions are created when interpolating based on those new supplied values.
}
