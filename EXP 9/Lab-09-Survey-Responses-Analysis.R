# -----------------------------
# Experiment 9
# Survey Responses Analysis
# -----------------------------

survey <- data.frame(
  Survey_ID = c(1,2,3),
  Question_1 = c("A","B","C"),
  Question_2 = c("B","A","A"),
  Question_3 = c("C","D","B")
)

# -----------------------------
# Q1 Grouped Bar Chart
# -----------------------------

q1 <- table(survey$Question_1)

barplot(q1,
        beside=TRUE,
        col=c("skyblue","orange","green"),
        main="Distribution of Question 1 Responses",
        xlab="Responses",
        ylab="Frequency")

# -----------------------------
# Q2 Stacked Bar Chart
# -----------------------------

responses <- rbind(
  table(factor(survey$Question_1,
               levels=c("A","B","C","D"))),

  table(factor(survey$Question_2,
               levels=c("A","B","C","D"))),

  table(factor(survey$Question_3,
               levels=c("A","B","C","D")))
)

colnames(responses) <- c("A","B","C","D")
rownames(responses) <- c("Question 1",
                         "Question 2",
                         "Question 3")

barplot(responses,
        beside=FALSE,
        col=c("red","blue","green"),
        main="Overall Survey Responses",
        xlab="Answer",
        ylab="Count",
        legend=rownames(responses))

# -----------------------------
# Q3 Table
# -----------------------------

print(survey)
