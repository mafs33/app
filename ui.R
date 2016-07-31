library(shiny)

# Define UI for application that draws a histogram
shinyUI(
  pageWithSidebar(
    #Title
    headerPanel("Transform pounds in kg"),
    
    sidebarPanel(
    h5("Put the value in pounds in the box below,
        click in the Submit button and the panel in the right will
        show the result in kg. To values with decimals use ',' instead '.'
        Example: 0,1 (correct), 0.1 (wrong)"),
      numericInput('pounds', 'measure in pounds', 1, min = 0, max = 1000, step = 0.1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results'),
      h4('You entered'), 
      verbatimTextOutput("inputValue"), 
      h6("in pounds"),
      h4("The result in kg is"),
      verbatimTextOutput("outputValue")
    )
  )
)
