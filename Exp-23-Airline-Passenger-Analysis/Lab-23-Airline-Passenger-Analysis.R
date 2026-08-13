setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-23-Airline-Passenger-Analysis")

data <- read.csv("Airline_Passengers.csv")

# Q1. Histogram of Passenger Ages
hist(data$Age,
     col = "skyblue",
     main = "Distribution of Passenger Ages",
     xlab = "Age",
     ylab = "Frequency")

# Q2. Pie Chart of Satisfaction Levels
satisfaction_count <- table(data$Satisfaction)

pie(satisfaction_count,
    col = c("lightgreen", "orange", "pink"),
    main = "Passenger Satisfaction Levels",
    labels = paste(names(satisfaction_count),
                   satisfaction_count))

# Q3. Bar Chart of Flight Hours by Passenger
bar <- barplot(data$Flight_Hours,
               names.arg = data$Passenger_ID,
               col = "lightblue",
               main = "Flight Hours by Passenger",
               xlab = "Passenger ID",
               ylab = "Flight Hours")

text(bar,
     data$Flight_Hours,
     labels = data$Flight_Hours,
     pos = 3)

# Q4. Scatter Plot of Age vs Flight Hours
plot(data$Age,
     data$Flight_Hours,
     pch = 19,
     col = "blue",
     main = "Age vs Flight Hours",
     xlab = "Age",
     ylab = "Flight Hours")

abline(lm(Flight_Hours ~ Age,
          data = data),
       col = "red",
       lwd = 2)

# Display dataset
print(data)