% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Transcript_HomoSapiens_Database.R
\docType{data}
\name{Transcript_HomoSapiens_Database}
\alias{Transcript_HomoSapiens_Database}
\title{Homo sapiens transcript database}
\format{
A data frame with 500 rows (genes) and 13 columns (samples).
The column names are as follow
\describe{
\item{symbol}{ENSEMBL gene names.}
\item{Median.length.RNA}{The sample is the first replica (r1)
of the biological condition N1wt and T1wt.}
}
}
\source{
{HGNC, ENSEMBL and NCBI database.}
}
\usage{
data(Transcript_HomoSapiens_Database)
}
\value{
Mouse dataset with four biological conditions.
}
\description{
The database is a data.frame which contains transcript length
of homo sapiens genes (40452 genes).
}
\details{
The first column contains genes symbol of the homo sapiens organism and
the second column contains the median of transcript length for each gene
of the first column.
}
\examples{
data(Transcript_HomoSapiens_Database)
}
\keyword{datasets}
