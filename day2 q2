data <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30)
n <- length(data)
k <- 3
bin_size <- ceiling(n / k)
bins <- split(data, cut(seq_along(data), breaks = k, labels = FALSE))
cat("Equal-frequency bins:\n")
print(bins)
bin_means <- lapply(bins, mean)
data_smoothed_means <- unlist(lapply(1:k, function(i) rep(bin_means[[i]], length(bins[[i]]))))
bin_boundaries <- lapply(bins, function(bin) c(min(bin), max(bin)))
data_smoothed_boundaries <- unlist(lapply(1:k, function(i) {
  bin <- bins[[i]]
  boundary <- bin_boundaries[[i]]
  sapply(bin, function(x) {
    if (abs(x - boundary[1]) < abs(x - boundary[2])) boundary[1] else boundary[2]
  })
}))
cat("Data smoothed using bin means:\n")
print(data_smoothed_means)
cat("Data smoothed using bin boundaries:\n")
print(data_smoothed_boundaries)
hist(data, breaks = 10, col = "lightblue", main = "Histogram of Original Data", xlab = "Price", ylab = "Frequency")
hist(data_smoothed_means, breaks = 10, col = "lightgreen", main = "Histogram of Data Smoothed Using Bin Means", xlab = "Price", ylab = "Frequency")
hist(data_smoothed_boundaries, breaks = 10, col = "lightcoral", main = "Histogram of Data Smoothed Using Bin Boundaries", xlab = "Price", ylab = "Frequency")
