

#' Atmospheric Conductance Model
#' Function to estimate atmospheric conductance based on vegetation height
#' Takes vegetation height, wind speed and k coefficients
#'
#' @param height vegetation height (cm)
#' @param k_d unitless coefficient
#' @param k_0 unitless coefficient
#' @param windspeed wind speed (cm/s)
#'
#' @return atmospheric conductance (cm/s)
#' @export
#'
#' @examples



atm_conductance <- function(height, k_d = 0.7, k_0 = 0.1, windspeed) {
  
  conductance <- windspeed / (6.25 * (log(((height + 200) - (k_d * height)) / (height * k_0)) ^ 2))
  
  return(conductance)
  
}