# Set working directory
setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-24-Hotel-Booking-Analysis")

# Import dataset
data <- read.csv("Hotel_Bookings.csv")

# Q1. Histogram of Stay Nights
hist(data$Stay.Nights,
     col = "skyblue",
     main = "Distribution of Stay Nights",
     xlab = "Stay Nights",
     ylab = "Frequency")

# Q2. Pie Chart of Room Types
room_count <- table(data$Room.Type)

pie(room_count,
    col = c("orange", "lightgreen", "skyblue"),
    main = "Distribution of Room Types",
    labels = paste(names(room_count), room_count))

# Q3. Bar Chart of Guests per Booking
bar <- barplot(data$Guests,
               names.arg = data$Booking.ID,
               col = "lightblue",
               main = "Guests per Booking",
               xlab = "Booking ID",
               ylab = "Number of Guests")

text(bar,
     data$Guests,
     labels = data$Guests,
     pos = 3)

# Q4. Scatter Plot of Guests vs Stay Nights
plot(data$Guests,
     data$Stay.Nights,
     
     pch = 19,
     col = "blue",
     main = "Guests vs Stay Nights",
     xlab = "Number of Guests",
     ylab = "Stay Nights")

abline(lm(Stay.Nights ~ Guests, data = data),
       col = "red",
       lwd = 2)

# Display dataset
print(data)
