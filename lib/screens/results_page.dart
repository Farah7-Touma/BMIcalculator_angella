import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../components/reusable_Code.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.bmiResult , required this.resultText , required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('BMI Calculator'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(alignment:Alignment.bottomLeft,child: const Text("Your Result",style:kTitleTextStyle),),
          )),
          Expanded(flex:5,
              child: ReusableCode(color:kActiveCardColor,
              cardChild: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      Text(resultText.toUpperCase(),style:kResultTextStyle),
                      Text(bmiResult,style: kBMITextStyle,),
                      Text(interpretation, style:kBodyTextStyle,
                        textAlign: TextAlign.center,
                      )
                  ],
                ),
              ),)),
          BottomButton(buttonTitle: "RE-CALCULATE",onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
