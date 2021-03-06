% Generated by roxygen2 (4.0.2): do not edit by hand
\name{exportDMRs2regionFile}
\alias{exportDMRs2regionFile}
\title{exportDMRs2regionFile}
\usage{
exportDMRs2regionFile(rnbSet, diffmeth, dest, comp.name, region.type,
  rank.cut = NULL, rerank = FALSE)
}
\arguments{
\item{rnbSet}{the RnBSet object for which the DMRs were computed.}

\item{diffmeth}{DiffMeth object. See \code{\link{rnb.execute.computeDiffMeth}} for details.}

\item{dest}{destination file name}

\item{comp.name}{name of the comparison}

\item{region.type}{region type.}

\item{rank.cut}{rank cutoff. If \code{NULL} (default), all regions are processed.}

\item{rerank}{flag indicating whether the ranks should be reranked or whether \code{rank.cut} refers to the absolute rank}
}
\value{
\code{NULL}
}
\description{
export differentially methylated regions to region file (standard bed). The output is in BED6 format where the score corresponds to
to the combined rank (rank==1 would receive a score of 1000 and a combined rank equal to the number of regions a score of 0)
}
\examples{
\dontrun{
library(RnBeads.hg19)
data(small.example.object)
logger.start(fname=NA)
dm <- rnb.execute.computeDiffMeth(rnb.set.example,pheno.cols=c("Sample_Group","Treatment"))
exportDMRs2regionFile(rnb.set.example,dm,tempfile(),get.comparisons(dm)[1],"promoters")
}
}
\author{
Fabian Mueller
}

