
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
sorted_marks <- sort(marks)
k <- 3
bin_size <- length(sorted_marks) / k
equal_frequency_bins <- split(sorted_marks, ceiling(seq_along(sorted_marks) / bin_size))
range_marks <- range(marks)
bin_width <- (range_marks[2] - range_marks[1]) / k
equal_width_bins <- cut(marks, breaks=seq(range_marks[1], range_marks[2], by=bin_width), include.lowest=TRUE)
par(mfrow=c(2,1)) 
hist(marks, breaks=c(min(marks)-1, unlist(lapply(equal_frequency_bins, max))), main="Equal-Frequency Partitioning", xlab="Marks", ylab="Frequency", col="blue", right=FALSE)
hist(marks, breaks=seq(range_marks[1], range_marks[2], by=bin_width), main="Equal-Width Partitioning", xlab="Marks", ylab="Frequency", col="red", right=FALSE)
par(mfrow=c(1,1))
