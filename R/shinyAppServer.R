#' Shiny app server function
#'
#' @param input provided by shiny
#' @param output provided by shiny
#'
#' @import shinysurveys

shinyAppServer <- function(input, output, session) {
  renderSurvey()
  
  observeEvent(input$submit, {
    showModal(modalDialog(
      title = "Congrats, you completed your first shinysurvey!",
      "You can customize what actions happen when a user finishes a survey using input$submit."
    ))
  })
}
