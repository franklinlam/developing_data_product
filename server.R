library(UsingR)
data(galton)

shinyServer(
  function(input, output) {
    output$newRPlot <- renderPlot({
      pure_data <- data.frame(x=1:10, y=1:10)
      noise <- data.frame(x=input$x, y=input$y)
      noise_data <- pure_data
      for (i in 1:input$no) {noise_data <- rbind(noise_data, noise)}
      fit <- lm(y~x, data=noise_data)
      plot(y~x, data=pure_data, main="Regression Model")
      abline(fit, col="red", lwd=2)
      points(noise, col="blue", pch=19, cex = 1.1* input$no)
      text(2, 7, paste("Intercept = ", round(coef(fit)[1],digits=3)))
      text(2, 8, paste("Slope = ", round(coef(fit)[2],digits=3)))
    })
    
  }
)