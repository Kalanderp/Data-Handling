setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-17-Vehicle-Performance-Analysis")

data <- read.csv("Vehicle_Performance.csv")

# ----------------------------
# Q1 Violin Plot
# ----------------------------
library(vioplot)

ratings <- sort(unique(data$Safety_Rating))

vioplot(
  lapply(ratings, function(r) data$Fuel_Efficiency[data$Safety_Rating == r]),
  names = ratings,
  col = "skyblue",
  main = "Fuel Efficiency by Safety Rating",
  xlab = "Safety Rating",
  ylab = "Fuel Efficiency"
)

# ----------------------------
# Q2 Scatter Plot
# ----------------------------
colors <- c("blue","green","orange","red","purple")

plot(data$Horsepower,
     data$Top_Speed,
     pch=19,
     cex=1.5,
     col=colors,
     xlab="Horsepower",
     ylab="Top Speed",
     main="Horsepower vs Top Speed")

text(data$Horsepower,
     data$Top_Speed,
     labels=data$Vehicle_ID,
     pos=3)

# ----------------------------
# Q3 Correlation Heatmap
# ----------------------------
cor_matrix <- cor(data[,2:6])

heatmap(cor_matrix,
        Rowv=NA,
        Colv=NA,
        scale="none",
        col=heat.colors(20),
        margins=c(7,7))

print(data)