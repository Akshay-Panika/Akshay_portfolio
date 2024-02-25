import 'package:akshay_portfolio/Reusable_widget/widgets_.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutText extends StatelessWidget {
  const AboutText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin:const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Abouts",style: TextStyle(fontSize:19,color: Colors.grey,fontWeight: FontWeight.w500),),
          55.height,
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("'I am a highly motivated person who loves technology as a whole and keeps exploring new tools and technologies .'",style: TextStyle(fontSize:17,color: Colors.grey,fontWeight: FontWeight.w500),),
              SizedBox(height:5,),
              Text("As a beginner in app development , I have been working hard to improve my development skills.",style: TextStyle(fontSize:17,color: Colors.grey,fontWeight: FontWeight.w500),),

            ],
          ),
        ],
      ),
    );
  }
}
