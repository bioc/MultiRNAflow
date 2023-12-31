#' @title Mouse raw counts data
#'
#' @description There are 4 groups : samples with or without hyper activation
#' of the gene NOTTCH1 (N1ha versus N1wt) and with or without knock out
#' of the gene TCF1 (T1ko versus T1wt).
#' The original dataset has 39017 genes but we kept only 500 genes
#' in order to increase the speed of each function in our algorithm.
#'
#' @format A data frame with 500 rows (genes) and 13 columns (samples).
#' The column names are as follow
#'  \describe{
#'            \item{Gene}{ENSEMBL gene names.}
#'            \item{N1wtT1wt_r1}{The sample is the first replica (r1)
#'            of the biological condition N1wt and T1wt.}
#'            \item{N1wtT1wt_r2}{The sample is the second replica (r2)
#'            of the biological condition N1wt and T1wt.}
#'            \item{N1wtT1wt_r3}{The sample is the third replica (r3)
#'            of the biological condition N1wt and T1wt.}
#'            \item{N1haT1wt_r4}{The sample is the first replica (r4)
#'            of the biological condition N1ha and T1wt.}
#'            \item{N1haT1wt_r5}{The sample is the second replica (r5)
#'            of the biological condition N1ha and T1wt.}
#'            \item{N1haT1wt_r6}{The sample is the third replica (r6)
#'            of the biological condition N1ha and T1wt.}
#'            \item{N1haT1ko_r7}{The sample is the first replica (r7)
#'            of the biological condition N1ha and T1ko.}
#'            \item{N1haT1ko_r8}{The sample is the second replica (r8)
#'            of the biological condition N1ha and T1ko.}
#'            \item{N1haT1ko_r9}{The sample is the third replica (r9)
#'            of the biological condition N1ha and T1ko.}
#'            \item{N1wtT1ko_r10}{The sample is the first replica (r10)
#'            of the biological condition N1wt and T1ko.}
#'            \item{N1wtT1ko_r11}{The sample is the second replica (r11)
#'            of the biological condition N1wt and T1ko.}
#'            \item{N1wtT1ko_r12}{The sample is the third replica (r12)
#'            of the biological condition N1wt and T1ko.}
#'  }
#'
#' @details
#' The following is quoted from the GEO series GSE169116 (link in source):
#'
#' Summary :
#' "NOTCH1 is a well-established lineage specifier for T cells and
#' among the most frequently mutated genes throughout all subclasses of T cell
#' acute lymphoblastic leukemia (T-ALL).
#' How oncogenic NOTCH1 signaling launches a leukemia-prone chromatin landscape
#' during T-ALL initiation is unknown. Here we demonstrate an essential role
#' for the high-mobility-group transcription factor Tcf1
#' in orchestrating chromatin accessibility and topology allowing for aberrant
#' Notch1 signaling to convey its oncogenic function.
#' Although essential, Tcf1 is not sufficient to initiate leukemia.
#' The formation of a leukemia-prone landscape at the distal Notch1-regulated
#' Myc enhancer, which is fundamental to this disease, is Tcf1-dependent and
#' occurs within the earliest progenitor stage even before cells adopt
#' a T lymphocyte or leukemic fate.
#' Moreover, we discovered an additional evolutionarily conserved
#' Tcf1-regulated enhancer element, in the distal Myc-enhancer,
#' which is important for the transition of pre-leukemic cells
#' to full-blown disease."
#'
#' Overall design:
#' "Expression profile comparisons of sorted LSK derived from C57BL/6J;
#' Sv/129 compound mice with Notch1 induced or Tcf1 knocked-down."
#'
#' We kept 500 genes only in order to increase the speed for each example.
#'
#' @source {This dataset comes from Gene Expression Omnibus (GEO)
#' \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE169116}.
#' The name of the samples was renamed in order to be used with our package.}
#'
#' @return Mouse dataset with four biological conditions.
#'
#' @usage data(RawCounts_Antoszewski2022_MOUSEsub500)
#'
#' @references
#' Antoszewski M, Fournier N, Ruiz Buendía GA, Lourenco J et al.
#' 'Tcf1 is essential for initiation of oncogenic Notch1-driven chromatin
#' topology in T-ALL'.
#' Blood 2022 Jan 12. PMID:35020836. GEO:GSE169116.
#'
#' @examples
#' data(RawCounts_Antoszewski2022_MOUSEsub500)
"RawCounts_Antoszewski2022_MOUSEsub500"
