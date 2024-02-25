import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Reusable_widget/reusable_cart_text.dart';

class ImageContainerPage extends StatelessWidget {
  const ImageContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      width: context.screenWidth < 1000 ? context.screenWidth*1:context.screenWidth*0.5,
      height:MediaQuery.of(context).size.height,

      child: Stack(
        children: [

          ///___ Back image
          Positioned(
            //right: -250,top:110,
            right:MediaQuery.of(context).size.width <1000 ? -400:-250,
            top: MediaQuery.of(context).size.width <1000 ? 150:150,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(5/13.5),
              child: Container(
                height:350,width: 850,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),
                    color: Colors.grey.shade900),
              ),
            ),
          ),

           CircleAvtarText(
             top: MediaQuery.of(context).size.width <1000 ? 480:430,
             right: MediaQuery.of(context).size.width <1000 ? 10:160,
             radius: MediaQuery.of(context).size.width <1000 ? 70:90,
             textPosition: MediaQuery.of(context).size.width <1000 ? 80:130,
             title: "Flutter developer",
               child:const Icon(Icons.info_outline,color: Colors.grey,)),

           CircleAvtarText(
             top: MediaQuery.of(context).size.width <1000 ? 180:190,
             right:  MediaQuery.of(context).size.width <1000 ? 150:300,
             radius: MediaQuery.of(context).size.width <1000 ? 45:55,
             textPosition: MediaQuery.of(context).size.width <1000 ? 50:80,
             title: "Flutter firebase",
             child:const Icon(Icons.info_outline,color: Colors.grey,)),

           CircleAvtarText(
              top: MediaQuery.of(context).size.width <1000 ? 360:370,
              right:  MediaQuery.of(context).size.width <1000 ? 165:460,
              radius:MediaQuery.of(context).size.width <1000 ? 55:75,
              textPosition: MediaQuery.of(context).size.width <1000 ? 70:100,
              title: "Ui & Ux designer",
               child:const Icon(Icons.info_outline,color: Colors.grey,)),

           CircleAvtarText(
             top: 250,right: MediaQuery.of(context).size.width <1000 ? 10:150,
             radius: 40,textPosition: 50,
            title: "Python",
             child:  const FaIcon(FontAwesomeIcons.python,size: 30,color: Colors.grey,),)
        ],
      ),
    );
  }
}
