#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# This app uses the 'USPersonalExpenditure' dataset.

library(shiny)
library(datasets)

# Seting the overall GUI

shinyUI(
    
    fluidPage(    
        
        titlePanel("Personal Expenditure by Year"),
        
        sidebarLayout(      
            
            sidebarPanel(
                selectInput("years", "Select years...", 
                            choices=colnames(USPersonalExpenditure)),
                hr(),
                helpText("This shiny app shows This data set consists of United States personal expenditures 
                (in billions of dollars) in the categories; food and tobacco, household operation, medical and 
                health, personal care, and private education for the years 1940, 1945, 1950, 1955 and 1960
                For further reference, the ui.R & server.R scripts can be found here: https://github.com/kjavilam/Shiny-Assigment")
            ),
            
            mainPanel(
                plotOutput("finalPlot"),
                h4('Personal Expenditure Data'),
                verbatimTextOutput("expenditure_count")
            )
            
        )
    )
)