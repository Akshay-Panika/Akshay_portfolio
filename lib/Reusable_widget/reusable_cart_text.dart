import 'package:flutter/material.dart';

class CircleAvtarText extends StatefulWidget {
  final String title;
  final double textPosition;
  final double top;
  final double right;
  final double radius;
  final Widget child;
  const CircleAvtarText({super.key,required this.title, required this.top, required this.right, required this.radius, required this.textPosition, required this.child});

  @override
  State<CircleAvtarText> createState() => _CircleAvtarTextState();
}
class _CircleAvtarTextState extends State<CircleAvtarText>   with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(_controller);
    _opacityAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,right: widget.right,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Opacity(
              opacity: _opacityAnimation.value,
              child: Stack(
                children: [
                  CircleAvatar(radius: widget.radius,backgroundColor: Colors.grey.shade800,
                      child:widget.child),
                  Padding(
                    padding:  EdgeInsets.only(left: widget.textPosition),
                    child: Card(
                      color: Colors.grey,
                      shape: UnderlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:25,vertical: 3),
                        child: Text(widget.title,style: const TextStyle(fontSize: 13,color: Colors.black),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
