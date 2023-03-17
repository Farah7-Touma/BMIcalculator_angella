import 'package:calculator_angella/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../calculator_brain.dart';
import '../components/bottom_button.dart';
import '../components/icon_content.dart';
import '../components/reusable_Code.dart';
import '../components/round_icon_button.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

enum Gender { male, female }
class _HomePageState extends State<HomePage> {

  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age=16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My App'),
        ),

        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child:ReusableCode(onTap:()
                      {setState(() {
                        selectedGender = Gender.male;
                      });}
                        ,color:selectedGender==Gender.male? kActiveCardColor:kInActiveCardColor,
                        cardChild: const IconContent("Male", Icons.male),
                      ),
                    ),
          Expanded(
              flex: 1,
              child:ReusableCode(onTap:()
                {
                  setState(() {
                  print("fff");
                  selectedGender = Gender.female;
                });}
              ,color:selectedGender==Gender.female? kActiveCardColor:kInActiveCardColor,
                cardChild: const IconContent("Female", Icons.female),
              ),
          ),
                  ],
                ),
            ),
            Expanded(
              child: Row(
                  children:  [
                    Expanded(
                      flex: 1,
                      child:ReusableCode(color:kActiveCardColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children:  [const Text("HEIGHT",style: kLabelTextStyle,),
                              Row(
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children:  [
                                  Text(height.toString(),
                                      style:kNumberText),
                                  const Text("cm",style: kLabelTextStyle,),
                                ],
                              ),
                              SliderTheme(
                                data:SliderTheme.of(context).copyWith(
                                  //we made this because all of properties are null by default
                                  thumbShape:const RoundSliderThumbShape(enabledThumbRadius: 15),
                                  overlayShape: const RoundSliderOverlayShape(overlayRadius: 30), //appears when click
                                  thumbColor: const Color(0xFFEB1555),
                                  overlayColor: const Color(0x1fEB1555),
                                  activeTrackColor: Colors.white,
                                  inactiveTrackColor: const Color(0xFF8D8E98),
                                ),
                                child: Slider(
                                  value: height.toDouble(),
                                  min:120.0,
                                  max:220.0,
                                  onChanged:(double newValue){
                                    setState((){
                                      height=newValue.round();
                                    });
                                  },
                                ),
                              ),
                            ],
                         ),
                      ),
                    ),
                      ],
        ),

                ),
            Expanded(
              child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children:  [
                          Expanded(
                            flex: 1,
                            child:ReusableCode(color:kActiveCardColor,
                                cardChild:
                                Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      const Text("WEIGHT",style: kLabelTextStyle,),
                                    Text(weight.toString(),style: kNumberText,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        RoundIconButton(icon: FontAwesomeIcons.minus,
                                          onPressed: (){
                                          setState(() {
                                            weight--;
                                          });
                                          }),
                                        const SizedBox(width: 10),
                                        RoundIconButton(icon: FontAwesomeIcons.plus,
                                            onPressed: (){
                                              setState(() {
                                                weight++;
                                              });
                                            }),
                                      ],
                                    )

                                ],) ),
                          ),
                        ],
                      ),

                    ),
                    Expanded(
                      flex: 1,
                      child:ReusableCode(color:kActiveCardColor,
                          cardChild:
                          Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("AGE",style: kLabelTextStyle,),
                              Text(age.toString(),style: kNumberText,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(icon: FontAwesomeIcons.minus,
                                      onPressed: (){
                                        setState(() {
                                          print("object");
                                          age--;
                                        });
                                      }),
                                  const SizedBox(width: 10,),
                                  RoundIconButton(icon: FontAwesomeIcons.plus,
                                      onPressed: (){
                                        setState(() {
                                          age++;
                                        });
                                      }),
                                ],
                              )

                            ],) ),
                    ),
                  ],
                ),
            ),

            BottomButton(buttonTitle: "RE-CALCULATE",onTap: (){
              CalculatorBrain calc = CalculatorBrain(height: height,weight: weight);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultsPage(bmiResult: calc.calculateBMI(), resultText: calc.getResult(), interpretation: calc.getInterpretation())));
            })
          ],

        ),
    );
  }

}






