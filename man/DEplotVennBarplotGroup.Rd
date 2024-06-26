% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DEplotVennBarplotGroup.R
\name{DEplotVennBarplotGroup}
\alias{DEplotVennBarplotGroup}
\title{Venn barplot of DE genes across pairs of biological conditions.}
\usage{
DEplotVennBarplotGroup(Mat.DE.pair.group)
}
\arguments{
\item{Mat.DE.pair.group}{Binary matrix or data.frame with \eqn{N_g} rows
and \eqn{((N_{bc}-1)*N_{bc})/2} columns with
\eqn{N_{bc}} the number of biological conditions.}
}
\value{
The function plots the number of genes for each possible
intersection in a UpSet plot.
}
\description{
The function takes as input a binary matrix or data.frame with
\eqn{N_g} rows and \eqn{((N_{bc}-1)\times N_{bc})/2} columns with
\eqn{N_g} the number of genes and \eqn{N_{bc}}
the number of biological conditions.
The number of 1 in the n-th row gives the number of pairs of
biological conditions where the gene \eqn{n} is DE.
We consider that a set of pairs of biological conditions forms
an intersection if there is at least one gene which is DE for each of
these pairs of biological conditions, but not for the others.

The function calls the \code{\link[UpSetR:upset]{UpSetR::upset()}} function in order to plot
the number of genes for each possible intersection in an UpSet plot
(Venn diagram displayed as a barplot).
}
\examples{
set.seed(1994)
##------------------------------------------------------------------------##
## Binary matrix
Bin.Table.G <- matrix(c(sample(c(0,1), replace=TRUE, size=240,c(0.75,0.35)),
                        sample(c(0,1), replace=TRUE, size=240,c(0.3,0.7)),
                        rep(0,18)),
                      ncol=6, byrow=TRUE)
colnames(Bin.Table.G) <- c(".A..B.",".A..C.",".A..D.",
                           ".B..C.",".B..D.",".C..D.")
##------------------------------------------------------------------------##
## Results
res.t.upset <- DEplotVennBarplotGroup(Mat.DE.pair.group=Bin.Table.G)
print(res.t.upset$Upset.global)
print(res.t.upset$Upset.threshold)
}
\seealso{
The function
\itemize{
\item calls the function \code{\link[UpSetR:upset]{UpSetR::upset()}} in order to plot the UpSet plot.
\item is called by the functions \code{\link[=DEanalysisGroup]{DEanalysisGroup()}} and
\code{\link[=DEanalysisTimeAndGroup]{DEanalysisTimeAndGroup()}}.
}
}
