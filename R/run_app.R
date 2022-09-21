#' @export
run_app <- function() {
  shiny::runApp(appDir = system.file("myapp/app.R",
                                     package = "cwdata"))
}
