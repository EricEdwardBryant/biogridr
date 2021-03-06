% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/foreign.R
\name{\%>\%}
\alias{\%>\%}
\title{Chain functions into pipeline}
\usage{
a \%>\% b
}
\description{
Chain functions to make nested function calls easier to read. 
In brief, \code{a \%>\% f(b)} is equivalent to \code{f(a, b)}. This function 
was exported from \code{dplyr} and originates from \code{magrittr}. See 
\link[dplyr]{chain} and \link[magrittr]{\%>\%} for more details.
}
\examples{
\dontrun{
set.seed(3)
## Three ways to do a silly thing
# Nested functions
nested <- hclust(
  dist(
    cor(
      matrix(
        rnorm(100), 
        nrow = 4), 
      method = 'spearman'), 
    'minkowski'), 
  'complete')

# Temporary variable assignment (more readable)
temp   <- rnorm(100)
temp   <- matrix(temp, nrow = 4)
temp   <- cor(temp, method = 'spearman')
temp   <- dist(temp, 'minkowski')
temped <- hclust(temp, 'complete')

# Chained functions (most readable)
chained <- rnorm(100) \%>\% 
  matrix(nrow = 4) \%>\% 
  cor \%>\% 
  dist('minkowski') \%>\% 
  hclust('complete')
}

}
