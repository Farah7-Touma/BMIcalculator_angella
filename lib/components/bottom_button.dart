import 'package:flutter/cupertino.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onTap,required this.buttonTitle});
  final Function() onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color:kContainerColorBottom,
        padding: const EdgeInsets.only(bottom:10)
        , margin: const EdgeInsets.only(top:10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(child: Text(buttonTitle,style: kLargeButtonTextStyle,)),),
    );
  }
}
