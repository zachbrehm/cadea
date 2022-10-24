#' Compute r values used to calculate R.
#'
#' @param mu a vector of cell type specific means for gene i, sorted into decreasing order.
#' @param alpha a vector of cell type specific dispersions for gene i, sorted into the same order as mu.
#' @returns A vector of r values for each cell type.
#' @examples
#' mu1 <- c(1,3,2)
#' alpha1 <- c(2,1,0.5)
#' littleR(mu1[order(mu1, decreasing = TRUE)], alpha1[order(mu1, decreasing = TRUE)])
#'
littleR <- function(mu, alpha) {
  (mu_tmp / alpha_tmp) * (alpha_tmp[1] / mu_tmp[1])
}
