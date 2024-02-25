import 'package:akshay_portfolio/Reusable_widget/widgets_.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Animeted_Container extends StatefulWidget {
  final String image ;
  final String title ;
  final VoidCallback onTap;
  const Animeted_Container({super.key, required this.image, required this.onTap, required this.title});

  @override
  State<Animeted_Container> createState() => _Animeted_ContainerState();
}

class _Animeted_ContainerState extends State<Animeted_Container> {
  bool isHover =false;
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){},
      onHover: (value){
        setState(() {
          isHover=value;
        });
      },
      child: Column(
        children: [
          AnimatedContainer(
            duration:const Duration(milliseconds: 200,),
            height:50,width:50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color:isHover? Colors.white:Colors.grey.shade700)
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CachedNetworkImage(imageUrl:widget.image,fit: BoxFit.cover,
                placeholder: (context, url) =>const CircularProgressIndicator(color: Colors.black54,strokeWidth:3,),
                errorWidget: (context, url, error) =>const Icon(Icons.error,color: Colors.black54,size: 19,),
              ),
            ),
          ),
          10.height,
          Text(widget.title, style: TextStyle(fontSize: 13,color: isHover ? Colors.blue:Colors.grey),),
        ],
      ),
    );
  }
}
