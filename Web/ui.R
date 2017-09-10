#### ui.R
#### Medhacks 2017
#### Sun Jay Yoo
#### Sept. 9, 2017

#### ui.R
#### Wu Lab, Johns Hopkins University
#### Author: Sun Jay Yoo
#### Date: July 28, 2017

library(shiny)
library(rJava)

shinyUI(fluidPage(theme = "bootstrap.css",
  
  titlePanel(title = div(img(src = 'logo.png', height = 150, weight = 391.51, class = "pull-light")), 
             windowTitle = "Mobum"),
  
  tabsetPanel(id = "section",
              tabPanel("Our Goal",
                       h3("Misson Statement")),
              tabPanel("How It Works",
                       h2("Internet-of-Things and Healthcare"),  
                       h2("Low power, low cost, low profile"),
                       h2("Embracing big data")),
              tabPanel("Track Your Progression",
                       textInput("trackName", label = h3("Begin tracking with Mobum"), value = "What are you tracking?"),
                       actionButton(inputId = "start", 
                                    label = "Start/reset tracking...",
                                    icon = icon("import", lib = "glyphicon")),
                       actionButton(inputId = "graph", 
                                    label = "Update graph",
                                    icon = icon("import", lib = "glyphicon")),
                       plotOutput(outputId = "plot", inline = T)
                       ),
              
              tabPanel("Customize Your Healthcare", 
                       textInput("createName", label = h3("Create-Your-Own Therapy"), value = "What kind of therapy?"),
                       sliderInput(inputId = "range1", 
                                   label = h5("Mobum 1 Range"),
                                   min = 0, max = 10, 
                                   value = c(0, 1),
                                   step = 0.01),
                       sliderInput(inputId = "range2", 
                                   label = h5("Mobum 2 Range"),
                                   min = 0, max = 10, 
                                   value = c(0, 1),
                                   step = 0.01),
                       sliderInput(inputId = "range3", 
                                   label = h5("Mobum 3 Range"),
                                   min = 0, max = 10, 
                                   value = c(0, 1),
                                   step = 0.01),
                       actionButton(inputId = "create", 
                                    label = "Create",
                                    icon = icon("import", lib = "glyphicon"))
                       
                       )
              
              
  )
))