% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/call.R
\name{annotate_regions}
\alias{annotate_regions}
\title{Annotate regions with segmentation info}
\usage{
annotate_regions(regions, segments, min.overlap.pc = 30)
}
\arguments{
\item{regions}{the regions to annotate}

\item{segments}{the segments, as output by segment_methylation}

\item{min.overlap.pc}{differences which have no big overlap with any segment
are classified as other (default 30 percent)}
}
\description{
Annotate regions with segmentation info
}
