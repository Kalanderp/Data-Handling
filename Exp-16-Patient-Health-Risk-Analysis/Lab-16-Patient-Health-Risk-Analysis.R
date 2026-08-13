setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-16-Patient-Health-Risk-Analysis")

data <- read.csv("Patient_Health_Risk.csv")

# ----------------------------
# Q1 Scatterplot Matrix
# ----------------------------
pairs(data[,2:5],
      col="blue",
      pch=19,
      main="Scatterplot Matrix")

# ----------------------------
# Q2 Q-Q Plot
# ----------------------------
qqnorm(data$Cholesterol,
       main="Q-Q Plot of Cholesterol")
qqline(data$Cholesterol,
       col="red",
       lwd=2)

# ----------------------------
# ECDF
# ----------------------------
plot(ecdf(data$Cholesterol),
     main="ECDF of Cholesterol",
     xlab="Cholesterol",
     ylab="ECDF")

# ----------------------------
# Q3 Average Bar Chart
# ----------------------------
avg <- colMeans(data[,2:5])

barplot(avg,
        col=c("skyblue","orange","lightgreen","pink"),
        main="Average Health Indicators",
        ylab="Average Value")

print(data)