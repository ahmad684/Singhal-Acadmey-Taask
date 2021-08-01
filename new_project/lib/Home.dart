import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'Vedio/vedioPlayer.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var image="nopain.png";
  String text_underimage="No Pain";
  var color1=Color(0xFFB1E0B2);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: color1,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Padding(

            padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
            child: Text(
              'Health Meter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(

            padding: const EdgeInsets.fromLTRB(8.0,0,8,8),
            child: Text(
              'How are you feeling Today?',style: TextStyle(fontSize: 15),),
          ),

          Center(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    child: SleekCircularSlider(
                      initialValue: 0,

                      min: 0,
                      max: 100,
                      appearance: CircularSliderAppearance(
                          size: MediaQuery.of(context).size.width*0.6,
                          customColors: CustomSliderColors(
                            hideShadow: true,
                            progressBarColor: Colors.white,
                            trackColor: Color(0xFFCEBFBF),

                          ),
                          customWidths: CustomSliderWidths(
                              progressBarWidth: 13,
                              trackWidth: 14

                          )

                      ),

                      onChange: (value){

                        SliderActons(value);



                      },

                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      Center(
                        child: Image(

                          alignment: Alignment.bottomCenter,
                            height: 150,
                            width: 150,
                            image: AssetImage('asset/images/$image')),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,20,8,8),
                        child: Text(text_underimage,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VedioSeries()));
                      }, child: Text('           Continue        '))

                    ],
                  ),
                ),


              ],

            ),
          ),
        ],
      ) ,
    );
  }
  void SliderActons( value){


    if(value>0&&value<=20){
setState(() {
  color1=Color(0xFFB1E0B2);
  image="nopain.png";
  text_underimage="No Pain";
});
    }
    else if(value>20&&value<=40){
setState(() {
  color1=Color(0xFFCEDECE);
  image="normal.png";
  text_underimage="Negligible Pain";
});
    }
    else if(value>40&&value<=60){
setState(() {
  color1=Color(0xFFD2B872);
  image="modi2.png";
  text_underimage="Mild Pain";
});
    }
    else if(value>60&&value<=80){
setState(() {
  color1=Color(0xFFB28CB8);
  image="sadd.png";
  text_underimage="Moderate Pain";
});
    }else if(value>80&&value<=100){
setState(() {
  color1=Color(0xD0E7855B);
  image="tear.png";
  text_underimage="Severe Pain";
});
    }


  }
}
