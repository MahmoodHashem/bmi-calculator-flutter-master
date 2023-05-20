import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusabe_column.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);
const inactiveCardColour = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleColour = inactiveCardColour;
  Color femaleColour = inactiveCardColour;

  void updateColour(int gender){
    if(gender == 1){
      if(maleColour == inactiveCardColour){
         maleColour = activeCardColour;
          femaleColour = inactiveCardColour;
      }else{
        maleColour = inactiveCardColour;
      }
    }
    if(gender == 2){
      if(femaleColour == inactiveCardColour){
        femaleColour = activeCardColour;
        maleColour = inactiveCardColour;
      }else{
        femaleColour = inactiveCardColour;
      }

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        if(maleColour == inactiveCardColour)
                          maleColour = activeCardColour;
                        else
                          maleColour = inactiveCardColour;
                      });
                    },
                    child: ReusableCard(
                      colour: maleColour,
                      cardChild:ReusableColumn(
                        text: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        if(femaleColour == inactiveCardColour)
                          femaleColour = activeCardColour;
                        else
                          femaleColour = Colors.blue;
                     });
                    },
                    child: ReusableCard(
                      colour: femaleColour,
                      cardChild: ReusableColumn(
                        text: "FEMALE",
                        icon:FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Expanded(
              child: ReusableCard(
                colour: inactiveCardColour,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour,this.cardChild });
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}



