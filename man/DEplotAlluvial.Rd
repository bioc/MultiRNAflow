% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DEplotAlluvial.R
\name{DEplotAlluvial}
\alias{DEplotAlluvial}
\title{Alluvial graphs of differentially expressed (DE) genes}
\usage{
DEplotAlluvial(
  table.DE.time,
  Temporal.Group = TRUE,
  title.alluvial = NULL,
  title.evolution = NULL
)
}
\arguments{
\item{table.DE.time}{Binary matrix (table filled with 0 and 1) with
\eqn{N_g} rows and \eqn{T-1} columns with \eqn{N_g} the number of genes and
\eqn{T-1} the number of time points.}

\item{Temporal.Group}{\code{TRUE} or \code{FALSE},
\code{FALSE} as default (see \code{Description}).}

\item{title.alluvial}{String of characters or \code{NULL},
\code{NULL} as default. The input \code{title.allluvial} corresponds
to the title of the alluvial graph.
If \code{title} is a string of characters,
\code{title} will be the title of the alluvial graph.
If \code{title=NULL}, the title of the alluvial graph will be
'Alluvial graph'.}

\item{title.evolution}{String of characters or \code{NULL},
\code{NULL} as default. Only applied if \code{Temporal.Group=TRUE}.
The input \code{title.evolution} corresponds to the title of
the second graph (see \code{Description}).
If \code{title} is a string of characters, it will be to the title of
the second graph.
If \code{title=NULL}, the title of the second graph will be
'Time evolution of the number of DE genes within each temporal group'.}
}
\value{
The function returns, as described in \code{description}
\itemize{
\item if \code{Temporal.Group=TRUE}, two graphs: an alluvial graph and
a plot showing the time evolution of the number of DE genes within
each temporal group.
By temporal group, we mean the sets of genes which are first DE
at the same time.
\item if \code{Temporal.Group=FALSE} : an alluvial graph.
}
}
\description{
The function takes as input a binary table with \eqn{N_g} lines
corresponding to genes and
\itemize{
\item if \code{Temporal.Group=TRUE} : \eqn{T-1} columns corresponding to times
(with \eqn{T} the number of time points).
A '1' in the n-th row and t-th column means that the n-th gene is
differentially expressed (DE) at time t, compared with
the reference time t0.
\item if \code{Temporal.Group=FALSE} :
\eqn{G} columns corresponding to the number of group.
A '1' in the \eqn{n}-th row and \eqn{g}-th column means
that the n-th gene is
\itemize{
\item DE at least one time ti, compared with the reference time t0,
for the group \eqn{g}.
\item specific at least one time ti, compared with the reference time t0,
for the group \eqn{g} (see \code{\link[=DEanalysisTimeAndGroup]{DEanalysisTimeAndGroup()}}
for the notion 'specific').
\item a signature gene at least one time ti, compared with the reference time
t0, for the group \eqn{g} (see \code{\link[=DEanalysisTimeAndGroup]{DEanalysisTimeAndGroup()}}
for the notion 'signature').
}
}

The function plots
\itemize{
\item if \code{Temporal.Group=TRUE}, two graphs: an alluvial graph and
a plot showing the time evolution of the number of DE genes within
each temporal group. By temporal group, we mean the sets of genes which
are first DE at the same time.
\item if \code{Temporal.Group=FALSE} : an alluvial graph.
}
}
\details{
The names of the columns of the table will be the axis labels
in the plots.
If the table has no column names, the function will automatically create
column names (t1,t2,...).
}
\examples{
set.seed(1994)

NbTime.vst0 <- 4
BinTable <- matrix(sample(c(0,1),replace=TRUE,
                          size=NbTime.vst0*120,c(0.60,0.40)),
                   ncol=NbTime.vst0)
colnames(BinTable) <- paste0("t", 1:NbTime.vst0)

##------------------------------------------------------------------------##
res.alluvial <- DEplotAlluvial(table.DE.time=BinTable)
print(res.alluvial$g.alluvial)
print(res.alluvial$g.alluvial.freq)
}
\seealso{
The \code{\link[=DEplotAlluvial]{DEplotAlluvial()}} function
\itemize{
\item is used by the following functions of our package : \code{\link[=DEanalysisTime]{DEanalysisTime()}}
and \code{\link[=DEanalysisTimeAndGroup]{DEanalysisTimeAndGroup()}}.
\item calls the R package \link{ggplot2} in order to plot the two graphs.
}
}
