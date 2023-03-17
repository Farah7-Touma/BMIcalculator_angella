import 'package:flutter/cupertino.dart';

class ReusableCode extends StatelessWidget {
  const ReusableCode({super.key,  required this.color, this.cardChild,this.onTap } );

  //final makes color immutable , not const because class ReusableCode can be created when call it , not just
  // when compiling
  final Color color;
  final Widget? cardChild; // widget inside the Card in not Necessary
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //padding: new EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(8.0),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:color,
        ),
        child:  cardChild,
      ),
    );
  }

}
