Professional Bull Riders (PBR) Quiz Pitch
========================================================
author: Alicia Wooten
date: 7/13/21
autosize: true

About the PBR
========================================================
- The Professional Bull Riders is bull riding organization created in 1992 when 20 visionary bull riders broke away from the traditional rodeo scene to make bull riding a stand alone sport
- More than 500 bull riders from around the world including the United States, Australia, Brazil, Canada and Mexico hold PBR memberships
- The PBR holds more than 200 bull riding events each year
- More than $10 million is awarded at events anually

Reason for PBR Quiz App
========================================================
- The PBR has a large and rapidly growing fan base:
    - Collectively, broadcasts reach 250MM households in more than 20 countries
    - Several times in 2020, PBR was the second most-watched sport on television, trailing only the NFL
- With this big fan base, it is important to maintain fan interaction, and the quiz app offers the fans a chance to prove their PBR knowledge

About the PBR Quiz App
========================================================
- The PBR Quiz app asks the user five multiple choice trivia questions about the PBR
- After the user selects answers to each question, they press the submit button
- When the answers are submitted, their score is calculated and displayed

How Score is Calculated
========================================================
Let's say the user has answered the first four questions correctly, and has answered "b" for question 5, when the correct answer is "a".  They should recieve a score of 4/5, or 80%.

```{r score}
score<-4 # score from previous questions
answer5<-"b" # user answer
correct5<-"a" # correct answer
if (answer5 == correct5) score<-score + 1 # check answer
percent<-score/5*100 # calculate Percent
paste0("You scored ",score,"/5.  That's ",percent,"%.") # display score
```