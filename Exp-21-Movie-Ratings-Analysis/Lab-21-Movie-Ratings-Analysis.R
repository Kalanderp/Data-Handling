setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-21-Movie-Ratings-Analysis")

data <- read.csv("Movie_Ratings.csv")

# Q1. Histogram of Movie Ratings
hist(data$Rating,
     col = "skyblue",
     main = "Distribution of Movie Ratings",
     xlab = "Rating",
     ylab = "Frequency")

# Q2. Pie Chart of Genre Distribution
genre_count <- table(data$Genre)

pie(genre_count,
    col = c("orange", "lightgreen", "skyblue"),
    main = "Movie Genre Distribution",
    labels = paste(names(genre_count), genre_count))

# Q3. Bar Chart of Average Ratings by Genre
avg_rating <- aggregate(Rating ~ Genre,
                        data = data,
                        FUN = mean)

bar <- barplot(avg_rating$Rating,
               names.arg = avg_rating$Genre,
               col = "lightblue",
               main = "Average Rating by Genre",
               xlab = "Genre",
               ylab = "Average Rating",
               ylim = c(0, 5))

text(bar,
     avg_rating$Rating,
     labels = round(avg_rating$Rating, 2),
     pos = 3)

# Q4. Scatter Plot of Duration vs Rating
plot(data$Duration_Min,
     data$Rating,
     pch = 19,
     col = "blue",
     xlab = "Duration (Minutes)",
     ylab = "Rating",
     main = "Movie Duration vs Rating")

abline(lm(Rating ~ Duration_Min, data = data),
       col = "red",
       lwd = 2)

# Display dataset
print(data)