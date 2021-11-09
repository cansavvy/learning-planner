#' Shiny app server object
#'
#' @importFrom graphics hist
#' @import shiny

# Define UI for slider demo app ----
shinyAppUI <- fluidPage(
  
  # App title ----
  titlePanel("Likert"),
  
    # Main panel for displaying outputs ----
    mainPanel(radioButtons("notebook", "RMarkdown/Juptyer:",
                           c('Completely Unfamiliar' = "1",
                             "Somewhat Familiar" = "2",
                             "Familiar" = "3",
                             "Very Familiar" = "4",
                             "Completely Familiar" = "5"), inline = TRUE),
      width = 12,
      
      # Output: Table summarizing the values entered ----
      tableOutput("values")
    )
)
