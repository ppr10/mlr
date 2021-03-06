% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ResampleResult.R
\name{ResampleResult}
\alias{ResampleResult}
\title{ResampleResult object.}
\description{
A resample result is created by \code{\link{resample}} and
contains the following object members:
\describe{
\item{task.id [\code{character(1)}]:}{
  Name of the Task.
}
\item{learner.id [\code{character(1)}]:}{
  Name of the Learner.
}
\item{measures.test [\code{data.frame}]:}{
  Gives you access to performance measurements
  on the individual test sets. Rows correspond to sets in resampling iterations,
  columns to performance measures.
}
\item{measures.train [\code{data.frame}]:}{
  Gives you access to performance measurements
  on the individual training sets. Rows correspond to sets in resampling iterations,
  columns to performance measures. Usually not available, only if specifically requested,
  see general description above.
}
\item{aggr [\code{numeric}]:}{
  Named vector of aggregated performance values. Names are coded like
  this <measure>.<aggregation>.
}
\item{err.msgs [\code{data.frame}]:}{
  Number of rows equals resampling iterations
  and columns are: \dQuote{iter}, \dQuote{train}, \dQuote{predict}.
  Stores error messages generated during train or predict, if these were caught
  via \code{\link{configureMlr}}.
}
\item{pred [\code{\link{ResamplePrediction}}]:}{
  Container for all predictions during resampling.
}
\item{models [list of \code{\link{WrappedModel}}]:}{
  List of fitted models or \code{NULL}.
}
\item{extract [\code{list}]:}{
  List of extracted parts from fitted models or \code{NULL}.
}
}
The print method of this object gives a short overview, including
task and learner ids, aggregated measures as well as mean and standard
deviation of the measures.
}
\seealso{
Other resample: \code{\link{ResampleDesc}},
  \code{\link{makeResampleDesc}};
  \code{\link{ResampleInstance}},
  \code{\link{makeResampleInstance}};
  \code{\link{ResamplePrediction}};
  \code{\link{bootstrapB632}},
  \code{\link{bootstrapB632plus}},
  \code{\link{bootstrapOOB}}, \code{\link{crossval}},
  \code{\link{holdout}}, \code{\link{repcv}},
  \code{\link{resample}}, \code{\link{subsample}};
  \code{\link{getRRPredictions}}
}

