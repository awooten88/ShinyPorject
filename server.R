library(shiny)

# Define server logic required to calculate quiz score
shinyServer(function(input, output) {
    observeEvent(input$sumbitButton, {
        
        # Isolate inputs
        answer1<-isolate({input$Q1})
        answer2<-isolate({input$Q2})
        answer3<-isolate({input$Q3})
        answer4<-isolate({input$Q4})
        answer5<-isolate({input$Q5})
        
        # Correct answers
        correct1<-"b. Silvano Alves and Adriano Moraes"
        correct2<-"c. Jess Lockwood"
        correct3<-"a. Guilherme Marchi"
        correct4<-"a. Chris Shivers"
        correct5<-"d. Pearl Harbor"
        
        # Calculate score
        score<-0
        if (answer1 == correct1) score<-score + 1
        if (answer2 == correct2) score<-score + 1
        if (answer3 == correct3) score<-score + 1
        if (answer4 == correct4) score<-score + 1
        if (answer5 == correct5) score<-score + 1
        
        # Calculate Percent
        percent<-score/5*100

        output$score <- renderText({
        paste0("You scored ",score,"/5.  That's ",percent,"%.")
        })
    })
})
