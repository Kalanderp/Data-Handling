setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-25-Fitness-Tracker-Analysis")

data <- read.csv("Daily_Fitness_Activity.csv")

# Q1. Histogram of Daily Steps
hist(data$Steps,
     col = "skyblue",
     main = "Distribution of Daily Steps",
     xlab = "Steps",
     ylab = "Frequency")

# Q2. Pie Chart of Activity Level Categories
activity_level <- cut(data$Steps,
                      breaks = c(0, 7500, 10000, Inf),
                      labels = c("Low", "Moderate", "High"))

activity_count <- table(activity_level)

pie(activity_count,
    main = "Activity Level Distribution",
    labels = paste(names(activity_count), activity_count),
    col = c("lightblue", "orange", "lightgreen"))

# Q3. Bar Chart of Calories Burned by User
bar <- barplot(data$Calories_Burned,
               names.arg = data$User_ID,
               col = "lightblue",
               main = "Calories Burned by User",
               xlab = "User ID",
               ylab = "Calories Burned")

text(bar,
     data$Calories_Burned,
     labels = data$Calories_Burned,
     pos = 3)

# Q4. Scatter Plot of Steps vs Calories Burned
plot(data$Steps,
     data$Calories_Burned,
     pch = 19,
     col = "blue",
     main = "Steps vs Calories Burned",
     xlab = "Daily Steps",
     ylab = "Calories Burned")

abline(lm(Calories_Burned ~ Steps,
          data = data),
       col = "red",
       lwd = 2)

# Display dataset
print(data)