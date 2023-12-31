% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/call.R
\name{segment_methylation_singlechr}
\alias{segment_methylation_singlechr}
\title{Segment methylation data (single chromosome version)}
\usage{
segment_methylation_singlechr(data, ret, std_lambda2 = 1000,
  pmd_std_threshold = 0.15, umr_std_threshold = 0.1,
  umr_max_beta = 0.1, lmr_max_beta = 0.5, pmd_max_beta = 0.7,
  valley_max_beta = 0.1, valley_min_width = 5000, max_distance = 500,
  min_num_cpgs = 4, min_width = 30, flank.width = 300,
  flank.dist.max = 5000, flank.num.cpgs = 10, flank.beta.min = 0.5,
  umr_large_width = 500, umr_large_density = 0.03, split.pmds = T,
  merge.pmds = T, drop = T, tol_val = 0.01)
}
\arguments{
\item{data}{the input data frame}

\item{ret}{the output of signal_detection}

\item{std_lambda2}{the value of the fusion penalty for PMD detection (default is 1000)}

\item{pmd_std_threshold}{the value of the threshold on the std (default 0.15) used for PMDs}

\item{umr_std_threshold}{the value of the threshold on the std (default 0.1)  use for UMRs}

\item{umr_max_beta}{segments with mean methylation below this threshold are UMRs (default 0.1)}

\item{lmr_max_beta}{segments with mean methylation below this threshold (default 0.5) and above umr_max_beta are LMRs}

\item{pmd_max_beta}{the maximum methylation value a segment group can have to be considered a PMD (default 0.7)}

\item{valley_max_beta}{Valleys must have mean methylation below this threshold (default 0.1)}

\item{valley_min_width}{Valleys must have at least this size (default 5000)}

\item{max_distance}{Within a segment, the distance between successive CpGs must never be larger than this distance,
and its mean must also be below it. (default 500)}

\item{min_num_cpgs}{minimum number of CpGs to classify as LMR/UMR (default 4)}

\item{min_width}{minimum width to classify as LMR/UMR (default 10)}

\item{flank.width}{minimum width of flanking segments (default 300)}

\item{flank.dist.max}{maximum distance of UMR/LMR to flanking segment (default 5000)}

\item{flank.num.cpgs}{Consider as small UMR/LMRs those which have num.cpgs smaller than this threshold (default 10)}

\item{flank.beta.min}{For small UMR/LMRs, require that flanking segments have mean methylation above this threshold (default 0.5)}

\item{umr_large_width}{large UMRs are accepted when larger than this (default 500)}

\item{umr_large_density}{large UMRs are accepted when more dense than this (default 0.03)}

\item{split.pmds}{whether to split PMDs which contain UMRs (default TRUE)}

\item{merge.pmds}{whether to merge adjacent PMDs into a single region (default TRUE)}

\item{drop}{whether to drop verbose columns and unannotated segments (default TRUE)}

\item{tol_val}{fused values below tol_val from each other are considered equal (default 0.01)}
}
\description{
Segment methylation data (single chromosome version)
}
