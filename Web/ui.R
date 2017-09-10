#### ui.R
#### Medhacks 2017
#### Sun Jay Yoo
#### Sept. 9, 2017

library(shiny)
library(rJava)

shinyUI(fluidPage(theme = "bootstrap.css",
  
  titlePanel(title = div(img(src = 'logo.png', height = 150, weight = 391.51, class="center-block")), 
             windowTitle = "Mobum"),
  
  tabsetPanel(id = "section",
              tabPanel("Our Goal",
                       fluidRow(
                         column(12, 
                                img(src="Mission2.png", width = 1125, align = "left"), 
                                img(src="Tech.png", width = 1125, align = "left"), 
                                img(src="Stats.png", width = 1125, align = "left"), 
                                img(src="Market.png", width = 1125, align = "left"),
                                img(src="Stake.png", width = 1125, align = "left"),
                                img(src="Team.png", width = 1125, align = "left"))) 
                       ),
              tabPanel("How It Works",
                       img(src="internet.png", width = 1125, align = "left"),  
                       img(src="bigdata.png", width = 1125, align = "left")),
              tabPanel("Customize Your Healthcare",
                       fluidRow(
                         column(4,
                                h3("Create-Your-Own Therapy"),
                                textInput("createName", label = h5("What kind of therapy?")),
                                sliderInput(inputId = "range1", 
                                            label = h5("Moodle 1 Range"),
                                            min = 0, max = 10, 
                                            value = c(0, 1),
                                            step = 0.01),
                                sliderInput(inputId = "range2", 
                                            label = h5("Moodle 2 Range"),
                                            min = 0, max = 10, 
                                            value = c(0, 1),
                                            step = 0.01),
                                sliderInput(inputId = "range3", 
                                            label = h5("Moodle 3 Range"),
                                            min = 0, max = 10, 
                                            value = c(0, 1),
                                            step = 0.01),
                                actionButton(inputId = "create", 
                                             label = "Create",
                                             icon = icon("import", lib = "glyphicon"))),
                         column(8, 
                                img(src="create.png", width = 700, align = "left"))
                       )
                       
              ),
              tabPanel("Track Your Progression",
                       fluidRow(
                         column(12,
                                h3("Begin tracking with Mobum"),
                                textInput("trackName", label = h5("What are you tracking?")),
                                actionButton(inputId = "start", 
                                             label = "Start/reset tracking...",
                                             icon = icon("import", lib = "glyphicon")),
                                actionButton(inputId = "graph", 
                                             label = "Update graph",
                                             icon = icon("import", lib = "glyphicon")),
                                plotOutput(outputId = "plot", inline = T),
                                textInput("email", label = h3("Send data to healthcare provider"), value = "@email"),
                                actionButton(inputId = "send", 
                                             label = "Send",
                                             icon = icon("import", lib = "glyphicon"))
                         )
                                
                                
                                
                                )
                       ))
              
              
  )
)