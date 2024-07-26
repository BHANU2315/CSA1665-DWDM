data("mtcars")
mpg <- mtcars$mpg
qsec <- mtcars$qsec
x <- 1:length(mpg)
plot(x, mpg, type="o", col="blue", xlab="Index", ylab="Value", ylim=c(min(c(mpg, qsec)), max(c(mpg, qsec))), main="Multiple Lines in Line Chart")
lines(x, qsec, type="o", col="red")
legend("topright", legend=c("mpg", "qsec"), col=c("blue", "red"), lty=1, pch=1)
