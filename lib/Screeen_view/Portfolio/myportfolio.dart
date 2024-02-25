import 'package:akshay_portfolio/Reusable_widget/widgets_.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Reusable_widget/dialogwidget.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing:25,
      runSpacing:25,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding:const EdgeInsets.only(top:30,bottom: 20),
          alignment: Alignment.center,
          child:const Text("My Portfolio",style: TextStyle(color: Colors.grey,fontSize: 19,fontWeight: FontWeight.w500),),
        ),

        PortfolioContainer(
          image: 'https://cdn.dribbble.com/userupload/3990474/file/original-738121e750deeb11a936d52206c7cb05.png?resize=1200x900',
          onTap: (){},
        ),
        PortfolioContainer(
          image: 'https://cdn.dribbble.com/users/1998175/screenshots/14551409/media/aa766783193d4ccf7bd1b3451419f612.jpg?resize=1000x750&vertical=center',
          onTap: (){},
        ),
        PortfolioContainer(
          image: 'https://cdn.dribbble.com/users/1874690/screenshots/3849871/day-1.png',
          onTap: (){},
        ),
        PortfolioContainer(
          image: 'https://cdn.dribbble.com/users/6057856/screenshots/15272476/media/782e9609b568c4177175e74f016acdc5.png?resize=1000x750&vertical=center',
          onTap: (){},
        ),

         Container(height:100,)
      ],
    );
  }
}

class PortfolioContainer extends StatefulWidget {
  final VoidCallback onTap;
  final String image;
  const PortfolioContainer({super.key, required this.onTap, required this.image});

  @override
  State<PortfolioContainer> createState() => _PortfolioContainerState();
}

class _PortfolioContainerState extends State<PortfolioContainer> {
  bool isHover = false;
  bool isHoverLink = false;
  bool isHoverView = false;
  final Uri _gitHub = Uri.parse("https://github.com/AkshayPanika");

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){},
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        height:400,
        width: context.screenWidth < 900 ? context.screenWidth *0.9 :((context.screenWidth*0.8)/4),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.image),fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
       child:Container(
          decoration: BoxDecoration(
            color: isHover ? Colors.black54:null,
            borderRadius: BorderRadius.circular(8),
          ),
          child:isHover ? Column(
            crossAxisAlignment:CrossAxisAlignment.center ,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height:35,
                color: isHover ? Colors.black54:null,
                child: Center(
                  child: InkWell(
                    onHover: (value){
                      setState(() {
                        isHoverView =(value);
                      });
                    },
                    onTap: (){
                      setState(() {
                        showDialogWidget(context);
                      });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("View Project",style: TextStyle(color:isHoverView? Colors.blue:Colors.grey,fontSize: 15,fontWeight:FontWeight.w600),),
                       SizedBox(width:8,),
                        Icon(Icons.play_circle_outlined,size:20,color:isHoverView? Colors.blue:Colors.grey,)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
               height:35,
                color: isHover ? Colors.black54:null,
                child: Center(
                  child: InkWell(
                    onHover: (value){
                      setState(() {
                        isHoverLink =(value);
                      });
                    },
                    onTap:github,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("GitHub Link",style: TextStyle(color:isHoverLink? Colors.blue:Colors.grey,fontSize: 15,fontWeight:FontWeight.w600),),
                        8.width,
                        Icon(Icons.link,size:25,color:isHoverLink? Colors.blue:Colors.grey,)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ):null,
        )
      ),
    );
  }
  Future<void> github()async{
    if(!await launchUrl(_gitHub)){
      throw Exception('Cloud not launch $_gitHub');
    }
  }

}



