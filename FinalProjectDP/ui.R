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
       sliderInput("sliderCement","How many kg of cement?",100,550,value=300)
       
       
    ),
    
    mainPanel(
       plotOutput("plot1"),
       h3("Predicted Compressive Strength (PSI):"),
       textOutput("pred1")
       
    )
  )
))
