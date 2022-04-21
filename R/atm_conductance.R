atm_conductance <- function(height, k_d = 0.7, k_0 = 0.1, windspeed) {
  
  conductance <- windspeed / (6.25 * (log(((h + 200) - (k_d * height)) / (height * k_0)) ^ 2))
  
}