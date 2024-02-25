import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

showDialogWidget(BuildContext context){
  AlertDialog alert= AlertDialog(
    backgroundColor: Colors.grey.shade900,
    title:const Text("My Project",style:TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w600),) ,
    content: Container(
     height:MediaQuery.of(context).size.height,
      width:context.screenWidth <900 ? context.screenWidth *0.9 : context.screenWidth*0.7,
      //width:MediaQuery.of(context).size.width,
      color: Colors.black87,
    ),
    actions: [
      TextButton(onPressed: (){}, child:const Icon(Icons.music_note,color: Colors.white,)),
      TextButton(onPressed: (){}, child:const Icon(Icons.play_circle_outlined,color: Colors.white,)),
    ],
  );
  showDialog(
    context: context,
    builder: (context) {
      return alert;
    },);
}