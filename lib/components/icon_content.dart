import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  const IconContent( this.text,  this.icon, {super.key} );
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 100,
          ),
          const SizedBox(height:30),
          Text(text,style: kLabelTextStyle ,)
        ]
    );
  }
}