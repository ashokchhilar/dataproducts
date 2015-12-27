library(UsingR)
library(forecast)
library(caret)
data("diamond")

modelfit <- train(price~., method="glm", data = diamond)

diamondprice <- function(carat){
  newval <- data.frame(carat=carat);
  result <- predict(modelfit, newdata=newval)
  result
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$Carat})
    output$prediction <- renderPrint({diamondprice(input$Carat)})
  }
)