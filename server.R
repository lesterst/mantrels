
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  # You can access the value of the widget with input$checkbox, e.g.
  probnum <- reactive(
    input$migration * 10 +
    input$anorexia * 10 +
    input$nausea * 10 +
    input$tenderness * 10 +
    input$rebound * 10 +
    input$temp * 10 +
    input$leukocytosis * 10 +
    input$leukocytosis * 10 +
    input$shift * 10 )

  output$mantrels <- renderText(probnum())
    
  output$action <- renderText(
    pn <- if(probnum()==0) {
      ""
    } else if(probnum()>=10 && probnum() < 50) {
      "Not appendicitis"
    } else if(probnum()>=50 && probnum() < 80) {
      "Admit for close observation"
    } else if(probnum()>=80 && probnum() < 100) "Operate"
     
  )
})

