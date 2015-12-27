library(shiny)

shinyUI(
  pageWithSidebar(
    # Predicting Diamond Prices
    headerPanel("Diamond Price Predictions"),
    sidebarPanel(
      numericInput('Carat', 'Carat', 0.175, min = 0.01, max = 2, step = 0.001),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of ($ USD)'),
      verbatimTextOutput("prediction")
    )
  )
)