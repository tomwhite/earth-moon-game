result = read.csv("results.csv", header = TRUE)
distance = result$Distance
summary(distance)
sd(distance)
hist(distance)

png("earth-moon.png", width = 600, height = 200)
stripchart(distance, pch='|', xlim=c(-10,730), ylim=c(0, 2), xlab="Distance (cm)")
points(c(0), c(1), pch="|", col="blue")
points(c(719), c(1), pch="|", col="orange")
dev.off()

