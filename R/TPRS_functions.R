#' Create TPRS
#'
#' @param size The width or height of spatial surface. Size of TPRS becomes (size x size). Only makes square TPRS for now.
#' @param spectral_density Spectral density for Gaussian process that generates TPRS. Defaults to 0.1.
#' @param n Number of TPRS to generate to be added to regression.
#'
#' @return List with TPRS dataframe, omega 1 and 2 (Fourier frequency values corresponding the basis functions in expand.grid() format).
#' @export
#' @examples
#' TPRS = create_n_2D_TPRS(16, .1, 10)
create_n_2D_TPRS = function(size, spectral_density = 0.1, n) {
  gp = spectralGP::gp(c(size, size), spectralGP::matern.specdens, c(spectral_density, 2))
  spectralGP::simulate(gp)
  o1 = gp$omega$omega1
  o2 = gp$omega$omega2
  o1o2 = data.frame(o1, o2)
  smoother = mgcv::s(o1, o2, k = n + 1)
  Smoothframe = mgcv::smooth.construct(smoother, data = o1o2, knots = NULL)
  TPRS = data.frame(Smoothframe$X)
  TPRS = TPRS[, c(n:(n + 1), 1:(n - 2))]
  return(list(TPRS = TPRS, o1 = o1, o2 = o2))
}

#' Plot TPRS
#'
#' @param tprs_obj Object returned from create_n_2D_TPRS
#'
#' @return Nothing. Produces a plot of all TPRS basis components
#' @export
#' @examples
#' obj = create_n_2D_TPRS(16, .1, 10)
#' visualize_2D_TPRS(obj)
visualize_2D_TPRS = function(tprs_obj) {
  TPRS = tprs_obj[[1]]
  o1 = tprs_obj[[2]]
  o2 = tprs_obj[[3]]

  df = dplyr::bind_cols(data.frame(o1 = o1, o2 = o2), TPRS)

  df_long = tidyr::pivot_longer(
    df,
    cols = tidyselect::starts_with("X"),
    names_to = "component",
    values_to = "value"
  )

  df_long$component = factor(
    df_long$component,
    levels = paste0("X", sort(as.numeric(sub("X", "", unique(df_long$component)))))
  )

  ggplot2::ggplot(df_long, ggplot2::aes(x = o1, y = o2, fill = value)) +
    ggplot2::geom_tile() +
    ggplot2::coord_equal() +
    ggplot2::facet_wrap(~ component, scales = "fixed") +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      title = "TPRS Basis Components",
      x = "o1", y = "o2", fill = "value"
    )


}



#' Simulate and (optionally) plot a Gaussian Process
#'
#' @param size Width/height of spatial grid
#' @param spectral_density Spectral density parameter for GP
#' @param plot Logical; whether to plot the simulated GP
#'
#' @return The simulated GP object
#' @export
#' @examples
#' simulate_gp(128, 0.1, plot = TRUE)
simulate_gp = function(size, spectral_density, plot = TRUE) {
  gp = spectralGP::gp(c(size, size), spectralGP::matern.specdens, c(spectral_density, 2))
  gp$specdens.name = "matern.specdens"
  spectralGP::simulate(gp)
  if (plot) {
    plot(gp)
  }
  return(gp)
}
