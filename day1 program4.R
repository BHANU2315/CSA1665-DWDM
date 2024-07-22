data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bins <- 3
bin_width <- length(data) / bins
get_bins <- function(data, bin_width) {
  split(data, ceiling(seq_along(data) / bin_width))
}
bins <- get_bins(data, bin_width)
smooth_by_bin_mean <- function(bins) {
  unlist(lapply(bins, function(bin) rep(mean(bin), length(bin))))
}
smoothed_data_mean <- smooth_by_bin_mean(bins)
cat("Smoothing by bin mean:\n")
print(smoothed_data_mean)
smooth_by_bin_median <- function(bins) {
  unlist(lapply(bins, function(bin) rep(median(bin), length(bin))))
}
smoothed_data_median <- smooth_by_bin_median(bins)
cat("Smoothing by bin median:\n")
print(smoothed_data_median)
smooth_by_bin_boundaries <- function(bins) {
  unlist(lapply(bins, function(bin) {
    bin_min <- min(bin)
    bin_max <- max(bin)
    sapply(bin, function(x) ifelse(abs(x - bin_min) < abs(x - bin_max), bin_min, bin_max))
  }))
}
smoothed_data_boundaries <- smooth_by_bin_boundaries(bins)
cat("Smoothing by bin boundaries:\n")
print(smoothed_data_boundaries)