#' Compute R for convolution distribution.
#'
#' @param r a vector of cell type specific r values obtained from littleR for gene i, sorted into decreasing order in terms of mu.
#' @param alpha a vector of cell type specific dispersions for gene i, sorted into the same order as r.
#' @returns A number used to scale zetas.
#' @examples
#' bigR(c(1, 0.75, 0.5, 0.25), 1)
#'
bigR <- function(r, alpha) {
  prod(r^alpha)
}
