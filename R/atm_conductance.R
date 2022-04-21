

#' Atmospheric Conductance Model
#' Function to estimate atmospheric conductance based on vegetation height
#' Takes vegetation height, wind speed and partial pressure
#'
#' @param height vegetation height (cm)
#' @param k_d
#' @param k_0
#' @param windspeed wind speed (cm/s)
#'
#' @return atmospheric conductance (UNITS)
#' @export
#'
#' @examples



atm_conductance <- function(height, k_d = 0.7, k_0 = 0.1, windspeed) {
  
  conductance <- windspeed / (6.25 * (log(((h + 200) - (k_d * height)) / (height * k_0)) ^ 2))
  
}