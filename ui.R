library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Professional Bull Riders (PBR) Quiz"),

    # Sidebar with questions with radio button options
    sidebarLayout(
        sidebarPanel(
            radioButtons("Q1","1. Who are the only three time PBR World Champs?",
                         c("a. Jess Lockwood and Silvano Alves",
                           "b. Silvano Alves and Adriano Moraes",
                           "c. Jess Lockwood and J.B. Mauney",
                           "d. J.B. Mauney and Adriano Moraes"), selected = character(0)),
            
            radioButtons("Q2","2. Who is the youngest ever PBR World Champion?",
                         c("a. Kaique Pacheco",
                           "b. Cooper Davis",
                           "c. Jess Lockwood",
                           "d. Jose Vitor Leme"), selected = character(0)),
            
            radioButtons("Q3","3. Who holds the record for most qualified rides in PBR history?",
                         c("a. Guilherme Marchi",
                           "b. J.B. Mauney",
                           "c. Justin McBride",
                           "d. Silvano Alves"), selected = character(0)),
            
            radioButtons("Q4","4. Who has the most 90-point rodes in PBR history?",
                         c("a. Chris Shivers",
                           "b. J.B. Mauney",
                           "c. Justin McBride",
                           "d. Guilherme Marchi"), selected = character(0)),
            
            radioButtons("Q5","5. Which of the following bulls is NOT a three time PBR World Champion bucking bull?",
                         c("a. Bushwhacker",
                           "b. Little Yellow Jacket",
                           "c. Bruiser",
                           "d. Pearl Harbor"), selected = character(0)),
            
            # Submit button
            actionButton("sumbitButton","Sumbit")
        ),

        # Display Socre
        mainPanel(
            h1("Instructions"),
            h5("Answer the five questions on the side panel by selecting the radio button of the correct answer.
               When you are finished, select the 'submit' button to get your score."),
            h1("Your Score"),
            textOutput("score")
        )
    )
))
