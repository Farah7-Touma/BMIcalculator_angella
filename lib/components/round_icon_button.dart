import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, required this.onPressed}) : super(key: key);
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation:0.0,
      disabledElevation: 6.0,
      constraints: const BoxConstraints.tightFor( // search in RawMaterialButton in flutter
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child:Icon(icon),
    );
  }
}
