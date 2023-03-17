import 'package:calculator_angella/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(const MyThemeData());

final ThemeData theme = ThemeData();
MaterialColor myColor = Colors.brown;

class MyThemeData extends StatelessWidget {


  const MyThemeData({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         home: const HomePage(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:const Color(0XFF0A0E21),
          colorScheme: theme.colorScheme.copyWith(primary:kContainerColorBottom, //change appBar
            secondary: myColor , // change floatingAction),
            ),
    ),
    );

  }
}



