import 'package:akshay_portfolio/Reusable_widget/widgets_.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Reusable_widget/reusable_containner.dart';

class AboutsPage extends StatefulWidget {
  const AboutsPage({super.key});

  @override
  State<AboutsPage> createState() => _AboutsPageState();
}

class _AboutsPageState extends State<AboutsPage> {
  final Uri  _email= Uri.parse("https://workedids@gmail.com/");
  final Uri  _linkedin= Uri.parse("https://www.linkedin.com/in/akshay-panika/");
  final Uri _github = Uri.parse("https://github.com/AkshayPanika");
  final Uri _instagram = Uri.parse("https://www.instagram.com/zero_pls_/");
  bool isHoveringLinkedin = false;
  bool isHoveringGithub = false;
  bool isHoveringEmail = false;
  bool isHoveringInstagram = false;

  Future<void> linkedin() async {
    if (!await launchUrl(_linkedin)) {
      throw Exception('Could not launch $_linkedin');
    }
  }
  Future<void> github() async {
    if (!await launchUrl(_github)) {
      throw Exception('Could not launch $_github');
    }
  }
  Future<void> email() async {
    if (!await launchUrl(_email)) {
      throw Exception('Could not launch $_email');
    }
  }
  Future<void> instagram() async {
    if (!await launchUrl(_instagram)) {
      throw Exception('Could not launch $_instagram');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.grey,
      width: context.screenWidth < 1000 ? context.screenWidth * 1 : context.screenWidth * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          230.height,
          Padding(
            padding: EdgeInsets.only(left:MediaQuery.of(context).size.width < 900 ? 30 : 200,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextStyleWidget(
                  title: "HEY THERE",
                  textColor: Colors.grey,
                  fontSize: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const TextStyleWidget(
                        title: "I AM",
                        textColor: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),

                    10.width,

                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText("AKSHAY PANIKA",textStyle:  TextStyle(color: Colors.blue.shade900,fontSize: 30,fontWeight: FontWeight.w800),
                        curve: Curves.linear
                        ),

                      ],
                    ),
                  ],
                ),
                5.height,

                const TextStyleWidget(
                  title:
                      "Welcome to my site! i am an flutter developer/ui/ux designer\nwho willing to work with you to make your idea brilliant.",
                  textColor: Colors.grey,
                  fontSize: 15,
                ),
                25.height,
                ReusableContainerWidget(
                 borderRadius:10,borderColor: Colors.grey.shade700,containerColor: Colors.grey.shade900,
                  horizontal: 45,vertical: 11,
                 child:const Text("Hire me!",style: TextStyle(color: Colors.grey),),
                ),
                55.height,
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing:5,
                  runSpacing: 20,
                  children: [
                     CircleAvatar(backgroundColor: Colors.grey.shade900,radius:40,child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("5+",style: TextStyle(fontSize: 13,color: Colors.grey)), Text("Projects",style: TextStyle(fontSize: 13,color: Colors.grey),),],),),

                    20.width,
                     CircleAvatar(backgroundColor: Colors.grey.shade900,radius:40,child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                       children: [Text("5+",style: TextStyle(fontSize: 13,color: Colors.grey)), Text("Projects",style: TextStyle(fontSize: 13,color: Colors.grey),),],),),
                    20.width,
                     CircleAvatar(backgroundColor: Colors.grey.shade900,radius:40,child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                       children: [Text("5+",style: TextStyle(fontSize: 13,color: Colors.grey)), Text("Projects",style: TextStyle(fontSize: 13,color: Colors.grey),),],),),
                  ],
                ),
              ],
            ),
          ),

          150.height,
          Padding(
            padding: EdgeInsets.only(left:MediaQuery.of(context).size.width < 900 ? 30 : 50,),
            child: Row(
              children: [
                InkWell(onTap:email,
                  onHover: (value){
                  setState(() {
                    isHoveringEmail=value;
                  });
                  },child: FaIcon(Icons.email,color:isHoveringEmail ? Colors.blue:Colors.grey,size: 20,),
                ),
                20.width,
                InkWell(onTap: github,
                  onHover: (value){
                  setState(() {
                    isHoveringGithub =value;
                  });
                  }, child: FaIcon(FontAwesomeIcons.github,color:isHoveringGithub ? Colors.blue:Colors.grey,size: 20,)
                ),
                20.width,
                InkWell(onTap:linkedin ,
                  onHover: (value){
                  setState(() {
                    isHoveringLinkedin =value;
                  });
                  },child: FaIcon(FontAwesomeIcons.linkedinIn,color:isHoveringLinkedin ? Colors.blue:Colors.grey,size: 20,),
                ),
                20.width,
                InkWell(onTap:instagram ,
                  onHover: (value){
                    setState(() {
                      isHoveringInstagram =value;
                    });
                  },child: FaIcon(FontAwesomeIcons.squareInstagram,color:isHoveringInstagram ? Colors.blue:Colors.grey,size: 20,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

