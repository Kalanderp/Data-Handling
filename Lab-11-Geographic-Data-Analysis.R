data <- read.csv("GeographicData.csv")

plot(data$Avg_Temperature,
     data$Population,
     pch=19,
     col="blue",
     xlab="Average Temperature",
     ylab="Population",
     main="Temperature vs Population")

print(data)