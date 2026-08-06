setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-15-Student-Mini-Data-Analysis")

data <- read.csv("Student_Mini_Data.csv")

# Convert Date
data$Exam_Date <- as.Date(data$Exam_Date)

# -------------------------
# Q1 Histogram
# -------------------------
hist(data$Math_Score,
     col="skyblue",
     main="Histogram of Math Scores",
     xlab="Math Score")

# Boxplot
boxplot(Science_Score~Gender,
        data=data,
        col=c("pink","lightgreen"),
        main="Science Score by Gender",
        xlab="Gender",
        ylab="Science Score")

# -------------------------
# Q2 Scatter Plot
# -------------------------
colors <- ifelse(data$Gender=="Male","blue","red")

plot(data$Study_Hours,
     data$Math_Score,
     col=colors,
     pch=19,
     xlab="Study Hours",
     ylab="Math Score",
     main="Study Hours vs Math Score")

abline(lm(Math_Score~Study_Hours,data=data),
       col="darkgreen",
       lwd=2)

legend("topleft",
       legend=c("Male","Female"),
       col=c("blue","red"),
       pch=19)

# -------------------------
# Q3 Monthly Average
# -------------------------
library(zoo)

data$Month <- format(data$Exam_Date,"%Y-%m")

monthly_avg <- aggregate(Math_Score~Month,
                         data,
                         mean)

plot(monthly_avg$Math_Score,
     type="o",
     xaxt="n",
     xlab="Month",
     ylab="Average Math Score",
     main="Monthly Average Math Score")

axis(1,
     at=1:nrow(monthly_avg),
     labels=monthly_avg$Month)

lines(rollmean(monthly_avg$Math_Score,
               k=2,
               fill=NA),
      col="red",
      lwd=2)

print(data)