setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-20-Hospital-Appointment-Analysis")

data <- read.csv("Hospital_Appointments.csv")

# Histogram of Patient Ages
hist(data$Age,
     col="skyblue",
     main="Patient Age Distribution",
     xlab="Age")

# Pie Chart of Appointment Status
status_count <- table(data$Appointment_Status)

pie(status_count,
    col=c("lightgreen","orange"),
    main="Appointment Status Distribution")

# Bar Chart of Waiting Time
barplot(data$Waiting_Time,
        names.arg=data$Patient_ID,
        col="lightblue",
        xlab="Patient ID",
        ylab="Waiting Time (Days)",
        main="Waiting Time by Patient")

# Scatter Plot
plot(data$Age,
     data$Waiting_Time,
     pch=19,
     col="red",
     xlab="Age",
     ylab="Waiting Time (Days)",
     main="Age vs Waiting Time")

print(data)