measureKg <- function(pounds) pounds*0.453592

shinyServer(
  function(input, output){
  output$inputValue <- renderPrint({input$pounds})
  output$outputValue <- renderPrint({measureKg(input$pounds)})
  }
)
