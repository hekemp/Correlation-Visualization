library(shiny)
               
shinyUI(pageWithSidebar(

  # Application title
  headerPanel("Illustrating Correlation in Data"),

  # Sidebar with input for correlation and number of observations
  sidebarPanel(
#    "INPUTS",

    sliderInput("rho", "Corrlelation:", min = -1, max = 1, value = 0.5, step=0.01),
    selectInput("nr_obs", "Number of observations:", c(10,25,50,100), selected =50, multiple = FALSE),
    br(),
    "Note: The observations are distributed accorting to a standard bivariate distribution with correlation r."
    ),

  mainPanel(plotOutput("scatterplot",height="800px"))

))
