
speed <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)
iqr_speed <- IQR (speed)
print(paste("Interquartile Range (IQR):", iqr_speed))
sd_speed <- sd(speed) 
print (paste("Standard Deviation:", sd_speed))
