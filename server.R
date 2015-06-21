BMIcalc <- function(height,weight) 703 * weight / (height^2)

shinyServer(
    function(input, output) {
        #output$inputValue <- renderPrint({input$weight})
        #output$inputValue <- renderPrint({input$height})
        output$Calculation <- renderPrint({BMIcalc(input$height,input$weight)})
    }
)