setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-14-Energy-Consumption-Analysis")

data <- read.csv("Energy_Consumption_Data.csv")

# Histogram
hist(data$Units_Consumed,
     col="skyblue",
     main="Units Consumed",
     xlab="Units Consumed")

# Density Plot
plot(density(data$Units_Consumed),
     col="red",
     lwd=2,
     main="Density Plot of Units Consumed")

# Scatter Plot
symbols(data$Temperature,
        data$Units_Consumed,
        circles=data$Peak_Hours/5,
        inches=0.2,
        bg="blue",
        fg="black",
        xlab="Temperature",
        ylab="Units Consumed",
        main="Temperature vs Units Consumed")

# Average Renewable Usage
avg_usage <- aggregate(Renewable_Usage ~ Sector,
                       data,
                       mean)

barplot(avg_usage$Renewable_Usage,
        names.arg=avg_usage$Sector,
        col="lightgreen",
        main="Average Renewable Usage",
        xlab="Sector",
        ylab="Average Usage")

print(data)
