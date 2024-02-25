import 'package:flutter/cupertino.dart';

class ReusableContainerWidget extends StatelessWidget {
  final double horizontal;
  final double vertical;
  final double borderRadius;
  final Color containerColor;
  final Widget child;
  final Color borderColor;
  const ReusableContainerWidget({super.key, required this.horizontal, required this.vertical, required this.borderRadius,required this.child,required this.borderColor, required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        border: Border.all(color:borderColor!),
        color: containerColor,
      ),
      child: Padding(padding: EdgeInsets.symmetric(horizontal: horizontal,vertical:vertical ),
      child: child,
      ),
    );
  }
}
