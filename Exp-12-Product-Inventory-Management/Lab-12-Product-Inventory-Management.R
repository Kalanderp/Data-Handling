data <- read.csv("ProductInventory.csv")

barplot(data$Quantity_Available,
        names.arg = data$Product_Name,
        col = "skyblue",
        xlab = "Product",
        ylab = "Quantity Available",
        main = "Product Inventory")

print(data)