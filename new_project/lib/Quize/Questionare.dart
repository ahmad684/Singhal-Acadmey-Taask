import 'package:flutter/material.dart';
import 'package:internship/Authenticaton/Login.dart';
import 'package:internship/Home.dart';


import '../main.dart';
import 'Save _response.dart';
SaveData database=new   SaveData();
String Question='';
String option_a='-';
String option_b='-';
String option_c='-';
String option_d='-';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var color0=Colors.white;
  var color1=Colors.white;
  var color2=Colors.white;
  var color3=Colors.white;


  void Next() {

    setState(() {

      if (quizBrain.isFinished() == true) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));


      } else {

        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(


        children: [
          Padding(
            padding: EdgeInsets.all(60.0),
            child: Center(

              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,

                ),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  color0=Colors.green;
                  option_a=quizBrain.getOption_a();
                });



              },
              child: Container(


                decoration: BoxDecoration(
                  color: color0,
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)),
                  border: Border.all(width: 2,color: Colors.black12),

                ),
                width: 250,
                height: 30,

                child: Center(child: Text(quizBrain.getOption_a())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  color1=Colors.green;
                });


              },
              child: Container(

                decoration: BoxDecoration(
                  color: color1,

                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)),
                  border: Border.all(width: 2,color: Colors.black12),

                ),
                width: 250,
                height: 30,

                child: Center(child: Text(quizBrain.getOption_b())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  color2=Colors.green;
                });


              },

              child: Container(

                decoration: BoxDecoration(
                  color: color2,
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)),
                  border: Border.all(width: 2,color: Colors.black12),

                ),
                width: 250,
                height: 30,

                child: Center(child: Text(quizBrain.getOption_c())),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  color3=Colors.green;
                });

              },
              child: Container(

                decoration: BoxDecoration(
                  color: color3,
                  borderRadius: BorderRadius.all(
                      Radius.circular(20.0)),
                  border: Border.all(width: 2,color: Colors.black12),

                ),
                width: 250,
                height: 30,

                child: Center(child: Text(quizBrain.getOption_d())),
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Question=quizBrain.getQuestionText();
    Map<String, dynamic> data = {
      "Question":Question,
      "User Response":option_a


    };
                database.insertData("USER RESPONSE", data);


                Next();
                setState(() {
                  color0=Colors.white;
                  color1=Colors.white;
                  color2=Colors.white;
                  color3=Colors.white;

                });
              },
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                      Radius.circular(5.0)),
                  border: Border.all(width: 2,color: Colors.black12),

                ),
                width: 250,
                height: 30,

                child: Center(child: Text('Next',style: TextStyle(fontSize: 18),)),
              ),
            ),
          ),


        ],
      ),
    );
  }
}