![Profile Header Image](https://www.google.com/url?sa=i&url=https%3A%2F%2Fgithub.com%2Ftopics%2Fflutter-examples%3Fl%3Ddart&psig=AOvVaw0ae9OwBA2YWlc_A9LnUV4j&ust=1605790901378000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKjWt8eTjO0CFQAAAAAdAAAAABAU)

# QuizApp !

  

This is a **Complete Quiz App in FLUTTER** using a lot of features such as

* Multiple Screens

* Start With Splash Screen

* Category Options ( Update Soon)

*  Quiz Duration Timer (10 sec By Default)

* Automaticaly move to Result After Time Complete.
 
* Button Color Changes On Click

* Result Page
  -Listtile
  -cards

* Random Questions Genration Added
  

And a lot more...



### Star It And Play With The Code

  

## Screenshots

<p align="start">
  <img width="200" height="370" src="https://github.com/hasham827/QuizApp/blob/master/Screen%20Shots/splash.png">
  <img width="200" height="370" src="https://github.com/hasham827/QuizApp/blob/master/Screen%20Shots/mainpage.png">
  <img width="200" height="370" src="https://github.com/hasham827/QuizApp/blob/master/Screen%20Shots/quizpage.png">
   <img width="200" height="370" src="https://github.com/hasham827/QuizApp/blob/master/Screen%20Shots/checkanswer.png">
 
</p>

  2. Changed Button Click Timer To 1 Second ( 2 sec Earlier )
  ```dart
      Timer(Duration(seconds: 1), nextquestion);
  ```
  3. Many Asked How To Increase And Decrease timer Timer ! Just Change The Timer Variable's Value 
  ```dart
      int timer = 30;
  
