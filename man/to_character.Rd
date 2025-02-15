% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/to_character.R
\name{to_character}
\alias{to_character}
\alias{to_character.double}
\alias{to_character.haven_labelled}
\title{Convert input to a character vector}
\usage{
to_character(x, ...)

\method{to_character}{double}(x, explicit_tagged_na = FALSE, ...)

\method{to_character}{haven_labelled}(
  x,
  levels = c("labels", "values", "prefixed"),
  nolabel_to_na = FALSE,
  user_na_to_na = FALSE,
  explicit_tagged_na = FALSE,
  ...
)
}
\arguments{
\item{x}{Object to coerce to a character vector.}

\item{...}{Other arguments passed down to method.}

\item{explicit_tagged_na}{should tagged NA be kept?}

\item{levels}{What should be used for the factor levels: the labels, the values or labels prefixed with values?}

\item{nolabel_to_na}{Should values with no label be converted to \code{NA}?}

\item{user_na_to_na}{user defined missing values into NA?}
}
\description{
By default, \code{to_character()} is a wrapper for \code{\link[base:character]{base::as.character()}}.
For labelled vector, to_character allows to specify if value, labels or labels prefixed
with values should be used for conversion.
}
\details{
If some values doesn't have a label, automatic labels will be created, except if
\code{nolabel_to_na} is \code{TRUE}.
}
\examples{
v <- labelled(c(1,2,2,2,3,9,1,3,2,NA), c(yes = 1, no = 3, "don't know" = 9))
to_character(v)
to_character(v, nolabel_to_na = TRUE)
to_character(v, "v")
to_character(v, "p")
}
