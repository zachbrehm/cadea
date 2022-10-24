#' Calculate deltaK.
#'
#' @param K an integer value.
#' @param zeta a vector of zeta values computed for each integer from 1 to K.
#' @returns A value deltaK such that E(K) = R*deltaK.
#' @examples
#' deltaK(K1, zeta1)
#'
deltaK <- function(K, zeta) {
  if (length(zeta) < K) {
    return(print("Error: Insufficient number of zeta values provided."))
  }
  if (K == 0) {
    return(1)
  } else {
    sum(sapply(1:K, function(x) x * zeta[x] * deltaK(K - x, zeta))) / K
  }
}
