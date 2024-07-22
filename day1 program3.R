data <- c(200, 300, 400, 600, 1000)
min_max_normalization <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}
normalized_data_min_max <- min_max_normalization(data)
cat("Min-max normalization:\n")
print(normalized_data_min_max)
z_score_normalization <- function(x) {
  (x - mean(x)) / sd(x)
}
normalized_data_z_score <- z_score_normalization(data)
cat("Z-score normalization:\n")
print(normalized_data_z_score)