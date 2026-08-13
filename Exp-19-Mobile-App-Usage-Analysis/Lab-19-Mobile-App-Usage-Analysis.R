setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-19-Mobile-App-Usage-Analysis")

data <- read.csv("Mobile_App_Usage.csv")

# Convert Date
data$Usage_Date <- as.Date(data$Usage_Date)

# ----------------------------
# Q1 Histogram
# ----------------------------
hist(data$Screen_Time,
     col="skyblue",
     main="Histogram of Screen Time",
     xlab="Screen Time (hrs)")

# Density Plot
plot(density(data$Screen_Time),
     col="red",
     lwd=2,
     main="Density Plot of Screen Time",
     xlab="Screen Time (hrs)")

# ----------------------------
# Q2 Scatter Plot
# ----------------------------
plot(data$Data_Used,
     data$Screen_Time,
     pch=19,
     col="blue",
     xlab="Data Used (GB)",
     ylab="Screen Time (hrs)",
     main="Data Used vs Screen Time")

abline(lm(Screen_Time ~ Data_Used, data=data),
       col="red",
       lwd=2)

cor(data$Data_Used,
    data$Screen_Time)

# ----------------------------
# Q3 Average Satisfaction
# ----------------------------
avg_sat <- aggregate(Satisfaction ~ Gender,
                     data,
                     mean)

bp <- barplot(avg_sat$Satisfaction,
              names.arg=avg_sat$Gender,
              col=c("lightblue","pink"),
              ylim=c(0,6),
              main="Average Satisfaction by Gender",
              ylab="Average Satisfaction")

text(bp,
     avg_sat$Satisfaction,
     labels=round(avg_sat$Satisfaction,1),
     pos=3)

print(data)