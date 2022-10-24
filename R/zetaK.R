#' Compute zeta values used to calculate delta.
#'
#' @param r a vector of cell type specific r values obtained from littleR for gene i, sorted into decreasing order in terms of mu.
#' @param i scaling index.
#' @param alpha a vector of cell type specific dispersions for gene i, sorted into the same order as mu.
#' @returns A number.
#' @examples
#' zetaK(r1, i1, alpha1)
#'
zetaK <- function(r, i, alpha) {
  sum(alpha * (1 - r)^i) / i
}
