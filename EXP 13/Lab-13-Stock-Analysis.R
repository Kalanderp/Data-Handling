setwd("E:/Development/College/Data-Handling-and-Visualization/Experiments/Exp-13-Stock-Analysis")

data <- read.csv("StockPrices.csv")

# Line Chart
matplot(1:nrow(data),
        data[,2:4],
        type="o",
        pch=16,
        lty=1,
        col=c("blue","red","green"),
        xaxt="n",
        xlab="Date",
        ylab="Stock Price",
        main="Stock Price Trend")

axis(1, at=1:nrow(data), labels=data$Date)

legend("topleft",
       legend=c("Stock A","Stock B","Stock C"),
       col=c("blue","red","green"),
       lty=1,
       pch=16)

# Daily Percentage Change for Stock A
pct_change <- c(0, diff(data$Stock_A) / head(data$Stock_A,-1) * 100)

barplot(pct_change,
        names.arg=data$Date,
        col="orange",
        xlab="Date",
        ylab="% Change",
        main="Daily Percentage Change - Stock A")

print(data)
