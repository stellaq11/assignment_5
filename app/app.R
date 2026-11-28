

library(shiny)
library(shinydashboard)
library(ggplot2)
library(dplyr)
library(readr)

dig.df <- read_csv("../data/dig_cleaned.csv")
glimpse(dig.df)


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
              h2("General Overview"),
              fluidRow(
                box(
                    title = "About the DIG Trial",
                    status = "info",
                    width = 12,
                    solidHeader = TRUE,
                    p("The DIG (Digitalis Investigation Group) Trial was a randomized, double-blind, multicenter trial with more than 300 centers in the United States and Canada participating."),
                    p("The purpose of the trial was to examine the safety and efficacy of Digoxin in treating patients with congestive heart failure in sinus rhythm."),
                    p("Digitalis was introduced clinically more than 200 years ago and has since become a commonly prescribed medication for the treatment of heart failure; however, there was considerable uncertainty surrounding its safety and efficacy."))
              ),
              fluidRow(
                box(
                    title = "About this Data Exploration",
                    status = "info",
                    width = 6,
                    solidHeader = TRUE,
                    p("This interactive application is for the exploration of the DIG trial dataset"),
                    p("It investigates the baseline characteristics, clinical outcomes, survival analysis and relationships between variables"),
                    p("The contents of the different sections can be viewed and analysed by selecting the items on the sidebar")
                ),
                box(
                    title = "Distribution of Treatment Groups",
                    status = "info",
                    width = 6,
                    solidHeader = TRUE
                ))),
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



