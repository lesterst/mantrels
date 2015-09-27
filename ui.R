
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
# Define UI
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MANTRELS - Appendicitis Calculator (not real data)"),
  
  sidebarLayout(
    
    # Sidebar with a slider input
    sidebarPanel(width = 7,
      
      helpText("Is there abdominal pain that has migrated to the right lower quadrant?"),
      checkboxInput("migration", label = "Migration", value = FALSE),
      
      helpText("Is there loss of appetite?"),
      checkboxInput("anorexia", label = "Anorexia", value = FALSE),
      
      helpText("Is there a feeling of queasiness or nausea?"),
      checkboxInput("nausea", label = "Nausea", value = FALSE),
      
      
      helpText("Is there tenderness to pressure in the right lower abdomen (McBurney's point)?"),
      checkboxInput("tenderness", label = "Tenderness", value = FALSE),
      
      helpText("Does it hurt to jiggle or lightly bump the abdomen?"),
      checkboxInput("rebound", label = "Rebound", value = FALSE),
      
      helpText("Is there a low grade fever?"),
      checkboxInput("temp", label = "Elevated temperature", value = FALSE),
      
      helpText("Is the white blood cell count elevated?"),
      checkboxInput("leukocytosis", label = "Leukocytosis", value = FALSE),
      
      helpText("Does the white blood cell count have a left shifted pattern?"),
      checkboxInput("shift", label = "Shift to the left", value = FALSE)
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(width = 3,
      h3("Appendicitis Probability (%):"),
      h3(textOutput("mantrels")),
      hr(),
      h3("Suggested action:"),
      h3(textOutput("action")),
      br(),
      br(),
      br(),
      h5(helpText("Instructions:")),
      helpText("Place a check mark on the left"),
      helpText("next to each of the symptoms"),
      helpText("present in your patient."),
      br(),
      helpText("The tool will give the probability"),
      helpText("of appendicitis, and give a"),
      helpText("suggested action to take")
    )
  )
))


# library(shinyapps)
# shinyapps::deployApp("~/Documents/r/mantrels")

