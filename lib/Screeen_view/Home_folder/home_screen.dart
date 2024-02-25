import 'package:akshay_portfolio/Reusable_widget/widgets_.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import '../About_text/about_text.dart';
import '../My_skills/myskills.dart';
import '../Portfolio/myportfolio.dart';
import '../fooder_/footer.dart';
import 'abouts_page.dart';
import 'image_containner_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final homeKey = GlobalKey();
  final skillKey = GlobalKey();
  final portfolioKey = GlobalKey();
  final contactKey = GlobalKey();
  List<Widget> navItem =[];
  @override
  void initState() {
    super.initState();
    navItem = [
      TextButton(onPressed: () {
        Scrollable.ensureVisible(homeKey.currentContext!,duration: const Duration(milliseconds:500),curve: Curves.linear);
      }, child: const TextStyleWidget(title: 'Home',textColor: Colors.grey,)),

      20.width,
      TextButton(onPressed: () {
        Scrollable.ensureVisible(skillKey.currentContext!,duration: const Duration(milliseconds:500),curve: Curves.linear);
      }, child: const TextStyleWidget(title: 'Skills',textColor: Colors.grey,)),

      20.width,
      TextButton(onPressed: () {
        Scrollable.ensureVisible(portfolioKey.currentContext!,duration: const Duration(milliseconds:500),curve: Curves.linear);
      }, child: const TextStyleWidget(title: 'Portfolio',textColor: Colors.grey,)),

      20.width,
      TextButton(onPressed: () {
        Scrollable.ensureVisible(contactKey.currentContext!,duration: const Duration(milliseconds:500),curve: Curves.linear);
      }, child: const TextStyleWidget(title: 'Contact',textColor: Colors.grey,)),
      150.width,
    ];
  }

  bool isMobile = false;
  bool isHoverWhatsapp = false;
  bool isHoverPhone = false;


  ///___ PhoneNumber
  final Uri _phoneNumber = Uri.parse('tel:898-920-7770');
  Future<void> phoneNumber() async {
    if (!await launchUrl(_phoneNumber)) {
      throw Exception('Could not launch $_phoneNumber');
    }
  }

  ///___ Whatsapp
  final Uri _whatsapp = Uri.parse('https://wa.me/+918989207770');
  Future<void> whatsapp() async {
    if (!await launchUrl(_whatsapp)) {
      throw Exception('Could not launch $_whatsapp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children:  [
                 Wrap(key: homeKey,
                  alignment: WrapAlignment.center,
                  children: const [
                    AboutsPage(),
                    ImageContainerPage(),
                  ],
                ),

                  AboutText(key: skillKey,),

                 ///___ My Skills
                 const MySkills(),
                150.height,

                ///___ My Portfolio
                SizedBox(height: 80,key: portfolioKey,),
                 const MyPortfolio(),
                50.height,
                Footer(key: contactKey,),
              ],
            ),
          ),
         Container(
             height: MediaQuery.of(context).size.height <1000 ? 60:100,
             width: double.infinity,
             color: Colors.black54,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding:  EdgeInsets.only(left: context.screenWidth <1000 ? 25 : 110 ),
                   child: TextButton(onPressed:() {}, child:const TextStyleWidget(title: "Portfolio",textColor: Colors.grey,fontSize: 19,)),
                 ),

                 MediaQuery.of(context).size.width < 1000 ?
                 const Text("",style: TextStyle(color: Colors.red),):Row(
                   children:navItem
                 ),
               ],
             ),
         )
        ],
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
                onTap:whatsapp ,
                onHover: (value){
                  setState(() {
                    isHoverWhatsapp = value;
                  });
                },
                child: FaIcon(FontAwesomeIcons.whatsapp,color:isHoverWhatsapp? Colors.blue: Colors.grey,)),
            20.width,
            InkWell(
                onTap: phoneNumber,
                onHover: (value){
                  setState(() {
                    isHoverPhone = value;
                  });
                },
                child: FaIcon(Icons.call_outlined,color:isHoverPhone? Colors.blue: Colors.grey,)),
            20.width
          ],
        ),
      ),
    );
  }

}
