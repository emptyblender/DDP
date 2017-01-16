#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(AppliedPredictiveModeling)
data(concrete)

shinyServer(function(input, output) {
   
 
  model<-lm(CompressiveStrength*145.038~Cement,data=concrete)
 
  
  modelpred<-reactive({
    cementInput<-input$sliderCement
    predict(model,newdata=data.frame(Cement=cementInput
                                      ))
})
  
  output$plot1<-renderPlot({
    cementInput<-input$sliderCement
  
plot(concrete$Cement,concrete$CompressiveStrength*145.038,xlab="Cement (kg)",
     ylab="Compressive Strength (PSI)",bty="n",pch=16,
     xlim=c(100,550),ylim=c(0,85*145))
points(cementInput,modelpred(),col="blue",pch=16,cex=4)
model1lines<-predict(model,newdata=data.frame(
  Cement=100:550
))

lines(100:550,model1lines,col="red",lwd=4)


})



output$pred1<-renderText({
  modelpred()
})

})