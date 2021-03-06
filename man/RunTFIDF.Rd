% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/preprocessing.R
\name{RunTFIDF}
\alias{RunTFIDF}
\alias{RunTFIDF.default}
\alias{RunTFIDF.Assay}
\alias{RunTFIDF.Seurat}
\title{Compute the term-frequency inverse-document-frequency}
\usage{
RunTFIDF(object, ...)

\method{RunTFIDF}{default}(
  object,
  assay = NULL,
  method = 1,
  scale.factor = 10000,
  verbose = TRUE,
  ...
)

\method{RunTFIDF}{Assay}(
  object,
  assay = NULL,
  method = 1,
  scale.factor = 10000,
  verbose = TRUE,
  ...
)

\method{RunTFIDF}{Seurat}(
  object,
  assay = NULL,
  method = 1,
  scale.factor = 10000,
  verbose = TRUE,
  ...
)
}
\arguments{
\item{object}{A Seurat object}

\item{...}{Arguments passed to other methods}

\item{assay}{Name of assay to use}

\item{method}{Which TF-IDF implementation to use. Choice of:
\itemize{
 \item{1}: The TF-IDF implementation used by Stuart & Butler et al. 2019
 (\url{https://doi.org/10.1101/460147}). This computes
 \eqn{\log(TF \times IDF)}.
 \item{2}: The TF-IDF implementation used by Cusanovich & Hill
 et al. 2018 (\url{https://doi.org/10.1016/j.cell.2018.06.052}). This
 computes \eqn{TF \times (\log(IDF))}.
 \item{3}: The log-TF method used by Andrew Hill (\url{http://andrewjohnhill.com/blog/2019/05/06/dimensionality-reduction-for-scatac-data/}).
 This computes \eqn{\log(TF) \times \log(IDF)}.
 \item{4}: The 10x Genomics method (no TF normalization). This computes
 \eqn{IDF}.
}}

\item{scale.factor}{Which scale factor to use. Default is 10000.}

\item{verbose}{Print progress}
}
\value{
Returns a \code{\link[Seurat]{Seurat}} object
}
\description{
Run term frequency inverse document frequency (TF-IDF) normalization on a
matrix.
}
\details{
Four different TF-IDF methods are implemented. We recommend using method 1
(the default).
}
\examples{
mat <- matrix(data = rbinom(n = 25, size = 5, prob = 0.2), nrow = 5)
RunTFIDF(object = mat)
RunTFIDF(atac_small[['peaks']])
RunTFIDF(object = atac_small)
}
\references{
\url{https://en.wikipedia.org/wiki/Latent_semantic_analysis#Latent_semantic_indexing}
}
\concept{preprocessing}
