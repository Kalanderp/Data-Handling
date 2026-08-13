setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-18-Student-Academic-Performance")

data <- read.csv("Student_Academic_Performance.csv")

# -------------------------
# Q1 Stacked Area Chart
# -------------------------
matplot(data$Test_Score,
        cbind(data$Test_Score, data$Participation_Score),
        type="l",
        lwd=3,
        lty=1,
        col=c("blue","red"),
        xlab="Student",
        ylab="Score",
        main="Test and Participation Scores")

legend("topleft",
       legend=c("Test Score","Participation Score"),
       col=c("blue","red"),
       lty=1,
       lwd=3)

# -------------------------
# Q2 Boxplot
# -------------------------
data$Attendance_Group <- cut(
  data$Attendance,
  breaks=quantile(data$Attendance,
                  probs=seq(0,1,0.25)),
  include.lowest=TRUE
)

boxplot(Study_Hours~Attendance_Group,
        data=data,
        col="lightgreen",
        main="Study Hours by Attendance Quartile",
        xlab="Attendance Quartile",
        ylab="Study Hours")

# -------------------------
# Q3 Density Plot
# -------------------------
plot(density(data$Test_Score),
     col="darkblue",
     lwd=3,
     main="Density Plot of Test Scores",
     xlab="Test Score")

print(data)