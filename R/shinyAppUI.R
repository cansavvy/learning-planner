#' Shiny app server object
#'
#' @importFrom graphics hist
#' @import shiny
#' @importFrom shinysurveys surveyOutput

# Define UI for slider demo app ----
shinyAppUI <- function() {
  df <- data.frame(question = "What is your favorite food?",
                   option = "Your Answer",
                   input_type = "text",
                   input_id = "favorite_food",
                   dependence = NA,
                   dependence_value = NA,
                   required = F)
  
  fluidPage(
  surveyOutput(df = df,
               survey_title = "Hello, World!",
               survey_description = "Welcome! This is a demo survey showing off the {shinysurveys} package.")
)
}
