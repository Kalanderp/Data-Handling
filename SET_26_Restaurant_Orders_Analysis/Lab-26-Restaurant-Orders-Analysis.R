# SET 26 - Restaurant Orders Analysis
# Questions 25-28

data <- read.csv("Restaurant_Orders.csv")

# 25. Histogram of bill amounts
hist(data$Bill_Amount,
     main = "Histogram of Bill Amounts",
     xlab = "Bill Amount",
     col = "skyblue",
     border = "black")

# 26. Pie chart of dining types
dining_counts <- table(data$Dining_Type)
pie(dining_counts,
    main = "Dining Type Distribution",
    col = rainbow(length(dining_counts)))

# 27. Bar chart of items ordered by order
barplot(data$Items_Ordered,
        names.arg = data$Order_ID,
        main = "Items Ordered by Order",
        xlab = "Order ID",
        ylab = "Items Ordered",
        col = "lightgreen")

# 28. Scatter plot of items ordered vs bill amount
plot(data$Items_Ordered, data$Bill_Amount,
     main = "Items Ordered vs Bill Amount",
     xlab = "Items Ordered",
     ylab = "Bill Amount",
     pch = 19,
     col = "blue")
