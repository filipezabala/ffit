#' Plot to Discrete Fourier Series fit
#'
#' @param \code{x} Output from \code{dfs} function in an object called \code{fit}.
#' @examples
#' n <- 1000000
#' (fit <- ffit(rnorm(n)))
#' plot(ft, lwd = 3, col = 'red', xlim = range(1:n), main = paste0('Fit order ', 10))
#' @export
ft <- function(x){
  fit.order <- fit$fit.order
  cosseno <- paste0(fit$ak, '*cos(', 1:fit.order, '*', fit$beta, '*x)')
  seno    <- paste0(fit$bk, '*sin(', 1:fit.order, '*', fit$beta, '*x)')
  trig <- c(fit$a0, cosseno, seno)
  eval(parse(text = c(paste0(trig,'+'),0)))
}
