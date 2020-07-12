#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)

pal = c("pink", "lightgreen", "lightblue", "grey", "black")
shinyServer(function(input, output) {
    
    output$personalexpenditures <- renderPrint({sum(USPersonalExpenditure[,input$years])})
    output$finalPlot <- renderPlot({
        
        barplot(USPersonalExpenditure[,input$years], 
                main = input$years,
                ylab = "Billions of dollars",
                ylim = c(0, 100),
                xlab = "Categories Personal Expenditures",
                col = pal)
    })
    
})