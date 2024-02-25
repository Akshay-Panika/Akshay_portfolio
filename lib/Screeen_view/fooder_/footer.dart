import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:300,
      //color:Colors.white,
      width: MediaQuery.of(context).size.width,
      margin:const EdgeInsets.only(top: 25),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Contact Me",style: TextStyle(color: Colors.grey,fontSize: 19,fontWeight: FontWeight.w500),),
          Divider(thickness:1,color:Colors.blueGrey.shade900,),
          const SizedBox(height:55,),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 ReusableRow(
                   title: ' Akshay#@gmail.com',
                   iconData:Icons.email,
                   onTap: (){},
                 ),
                 ReusableRow(
                   title: '+918989273770',
                   iconData:Icons.call,
                   onTap: (){},
                 ),

               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 ReusableRow(
                   title: 'Waidhan, Singrauli,Madhya Pradesh',
                   iconData:Icons.location_on,
                   onTap: (){},
                 ),
               ],
             ),
             ],
           ),
           const SizedBox(height:30,),
          SizedBox(
            height:35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              ],
            ),
          )

        ],
      ),
    );
  }
}

///___ ReusableRow Widget
class ReusableRow extends StatefulWidget {
   final IconData iconData;
  final String title;
  final VoidCallback onTap;
   ReusableRow({super.key, required this.iconData, required this.title, required this.onTap});

  @override
  State<ReusableRow> createState() => _ReusableRowState();
}

class _ReusableRowState extends State<ReusableRow> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
         Icon(widget.iconData,color: Colors.grey,),
          Text(widget.title,style: TextStyle(color: Colors.grey),)
        ],
      ),
    );
  }
}
