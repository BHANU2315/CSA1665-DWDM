ages <- c(23, 29, 31, 35, 36, 40, 45, 46, 47, 50, 52, 54, 55, 56, 57, 59, 61, 63)
min_age <- min(ages)
max_age <- max(ages)
value <- 35
min_max_normalization <- function(value, min_value, max_value) {
  (value - min_value) / (max_value - min_value)
}
normalized_value_min_max <- min_max_normalization(value, min_age, max_age)
cat("Min-max normalization of 35:\n")
print(normalized_value_min_max)
mean_age <- mean(ages)
sd_age <- 12.94  
z_score_normalization <- function(value, mean_value, sd_value) {
  (value - mean_value) / sd_value
}
normalized_value_z_score <- z_score_normalization(value, mean_age, sd_age)
cat("Z-score normalization of 35:\n")
print(normalized_value_z_score)
decimal_scaling_normalization <- function(value, j) {
  value / (10^j)
}
j <- ceiling(log10(max(abs(ages))))
normalized_value_decimal_scaling <- decimal_scaling_normalization(value, j)
cat("Normalization by decimal scaling of 35:\n")
print(normalized_value_decimal_scaling)