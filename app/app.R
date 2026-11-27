

library(shiny)
library(shinydashboard)


ui <- dashboardPage(
  skin = "purple",
  
  dashboardHeader(title = "Data Exploration of Digitalis Investigation Group (DIG) Trial",
                  titleWidth = 600),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("General Overview", tabName = "overview", icon = icon("dashboard")),
      menuItem("DIG data table and Codebook", tabName = "table", icon = icon("table")),
      menuItem("Baseline Characteristics", tabName = "baseline", icon = icon("users")),
      menuItem("Clinical Outcomes", tabName = "outcome", icon = icon("chart-line")),
      menuItem("Survival Analysis", tabName = "survival", icon = icon("heartbeat")),
      menuItem("Relationships of Variables", tabName = "variables", icon = icon("braille"))
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "overview",
              h2("General Overview")),
      tabItem(tabName = "table",
              h2("DIG data table and Codebook")),
      tabItem(tabName = "baseline",
              h2("Baseline Characteristics")),
      tabItem(tabName = "outcome",
              h2("Clinical Outcomes")),
      tabItem(tabName = "survival",
              h2("Survival Analysis")),
      tabItem(tabName = "variables",
              h2("Relationships of Variables"))
    )
  )
)

server <- function(input, output) { }

shinyApp(ui, server)



