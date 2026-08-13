setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-22-Library-Borrowing-Records")

data <- read.csv("Library_Usage.csv")

# Q1. Histogram of Books Borrowed
hist(data$Books_Borrowed,
     col="skyblue",
     main="Distribution of Books Borrowed",
     xlab="Books Borrowed",
     ylab="Frequency")

# Q2. Pie Chart - Users With and Without Fines
fine_status <- ifelse(data$Fine_Amount > 0,
                      "With Fine",
                      "Without Fine")

fine_count <- table(fine_status)

pie(fine_count,
    col=c("lightgreen","orange"),
    main="Users With and Without Fines",
    labels=paste(names(fine_count), fine_count))

# Q3. Bar Chart of Fine Amounts by User
bar <- barplot(data$Fine_Amount,
               names.arg=data$User_ID,
               col="lightblue",
               main="Fine Amount by User",
               xlab="User ID",
               ylab="Fine Amount")

text(bar,
     data$Fine_Amount,
     labels=data$Fine_Amount,
     pos=3)

# Q4. Scatter Plot of Days Kept vs Fine Amount
plot(data$Days_Kept,
     data$Fine_Amount,
     pch=19,
     col="blue",
     main="Days Kept vs Fine Amount",
     xlab="Days Kept",
     ylab="Fine Amount")

abline(lm(Fine_Amount ~ Days_Kept,
          data=data),
       col="red",
       lwd=2)

print(data)