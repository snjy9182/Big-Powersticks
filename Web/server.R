#### ui.R
#### Medhacks 2017
#### Sun Jay Yoo
#### Sept. 9, 2017

library(shiny)
library(rJava)


shinyServer(function(input, output, session){
  data <- reactiveValues(data= NULL);
  observeEvent(input$start, {
    unlink("data.txt")
    .jinit(".")
    obj=.jnew("SensorSerialStream")
    .jcall(obj, "V", "runshit")
  })
  observeEvent(input$graph, {
      data$data = read.table("data.txt", sep = "\n")
  })
  output$plot <- renderPlot({
    if (!is.null(data$data))
      plot(data$data[[1]], type = 'l', main = paste(input$trackName, " Moodle Sensor 1", sep =""), xlab="Time (ms)", ylab="Acceleration (g)", xlim =  range(0:length(data$data[[1]])), ylim = range(-1:max(data$data[[1]])+0.3))
  }, width = 800, height = 300)
  observeEvent(input$create, {
    n = c(input$range1[[1]], input$range1[[2]], input$range2[[1]], input$range2[[2]],
          input$range3[[1]], input$range3[[2]], input$range4[[1]], input$range4[[2]])
    write.table(n, file = paste(input$createName, ".txt", sep =""), sep = "\n", row.names = FALSE, col.names = FALSE)
  })
  
})