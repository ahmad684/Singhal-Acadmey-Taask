import 'package:flutter/material.dart';

import 'Questionare.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Center(

            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/images/qqq.jpg"),
                        fit: BoxFit.cover)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0,50,8,8),
                      child: Text('Take the\n questionnaire',
                        textAlign: TextAlign.center, style:
                        TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    ),
                    Text('5 questions - 2 min',style:
                    TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 350,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizPage()));
                      }, child: Icon(Icons.arrow_forward)),
                    )
                  ],
                )
            )
        )

    );
  }
}

