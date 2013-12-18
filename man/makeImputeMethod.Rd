\name{makeImputeMethod}
\alias{makeImputeMethod}
\title{Create a custom imputation method.}
\usage{
  makeImputeMethod(learn, impute, args = list())
}
\arguments{
  \item{learn}{[\code{function(data, target, col, ...)}]\cr
  Function to learn and extract information on column
  \code{col} out of data frame \code{data}. Argument
  \code{target} specifies the target column of the learning
  task.  The function has to return a named list of
  values.}

  \item{impute}{[\code{function(data, target, col,
  ...)}]\cr Function to impute missing values in \code{col}
  using information returned by \code{learn} on the same
  column.  All list elements of the return values o
  \code{learn} are passed to this function into
  \code{...}.}

  \item{args}{[\code{list}]\cr Named list of arguments to
  pass to \code{learn} via \code{...}.}
}
\description{
  This is a constructor to create your own imputation
  methods.
}
