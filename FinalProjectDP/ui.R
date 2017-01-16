#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  titlePanel("Predicted Compressive Strength of Concrete"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("sliderCement","How many kg of cement?", value=300, min=100,max=550,step=1) 

       
    ),
    
    mainPanel(
       plotOutput("plot1"),
       h3("Predicted Compressive Strength (PSI):"),
       textOutput("pred1")
       
    )
  )
))
