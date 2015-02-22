shinyUI(fluidPage(
  titlePanel("Outlier Effect in Simple Regression Model"),
  sidebarLayout(
    sidebarPanel(
    strong("Outlier"),
    sliderInput(inputId='x', label='X-coordinate',value = 5, min = 1, max = 10, step = 0.5,),
    sliderInput(inputId='y', label='Y-coordinate',value = 5, min = 1, max = 10, step = 0.5,),
    sliderInput(inputId='no',label='Numbers',value = 1, min = 1, max = 5, step = 1,),
    strong("How to run the application"),
    p("1. Download and install RStudio"),
    p("2. Install the 'shiny' package on RStudio"),
    p("3. Download and save the server.R and ui.R in the current directory of RStudio"),
    p("4. Type 'runApp()' to run the application"),
    strong("Enjoy!")
  ),
  mainPanel(
    plotOutput('newRPlot'),
    p("Description: This is a simple Shiny application showing the effect of outlier 
      outlier on the regression model. You can use the sliders to re-position 
      the outlier and increase the number of outliers.")
  )
  )
))