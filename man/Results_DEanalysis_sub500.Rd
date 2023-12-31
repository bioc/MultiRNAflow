% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Results_DEanalysis_sub500.R
\docType{data}
\name{Results_DEanalysis_sub500}
\alias{Results_DEanalysis_sub500}
\title{DE results of three dataset}
\format{
A list of 3 SummarizedExperiment class object
}
\usage{
data(Results_DEanalysis_sub500)
}
\value{
\code{Results_DEanalysis_sub500} contains the outputs of
\code{\link[=DEanalysisGlobal]{DEanalysisGlobal()}} of:
RawCounts_Weger2021_MOUSEsub500,
RawCounts_Leong2014_FISSIONsub500wt and
RawCounts_Schleiss2021_CLLsub500
}
\description{
The list Results_DEanalysis_sub500 contains the results of
\code{\link[=DEanalysisGlobal]{DEanalysisGlobal()}}
for each of the following raw counts :
RawCounts_Weger2021_MOUSEsub500,
RawCounts_Leong2014_FISSIONsub500wt and
RawCounts_Schleiss2021_CLLsub500
}
\details{
Each list in Results_DEanalysis_sub500 contains only the necessary outputs
of \code{\link[=DEanalysisGlobal]{DEanalysisGlobal()}},
needed for the functions:
\code{\link[=DEplotVolcanoMA]{DEplotVolcanoMA()}},
\code{\link[=DEplotHeatmaps]{DEplotHeatmaps()}},
\code{\link[=GSEApreprocessing]{GSEApreprocessing()}},
and
\code{\link[=GSEAQuickAnalysis]{GSEAQuickAnalysis()}},
for each of the following raw counts :
RawCounts_Weger2021_MOUSEsub500,
RawCounts_Leong2014_FISSIONsub500wt and
RawCounts_Schleiss2021_CLLsub500
}
\examples{
data(Results_DEanalysis_sub500)
}
\keyword{datasets}
