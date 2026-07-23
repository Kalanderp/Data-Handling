# Product Category Analysis

data <- data.frame(
  Category = c("Electronics","Clothing","Appliances"),
  Sales = c(50000,35000,40000)
)

# Pie Chart
pie(data$Sales,
    labels=data$Category,
    col=c("skyblue","orange","lightgreen"),
    main="Sales Distribution by Product Category")

# Funnel Chart (Horizontal Bar Chart)
barplot(rev(data$Sales),
        names.arg=rev(data$Category),
        horiz=TRUE,
        col="steelblue",
        main="Sales Funnel by Category",
        xlab="Sales")

# Table
print(data)
