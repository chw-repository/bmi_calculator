import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activateCardColour = Color(0xFF1D1E33);
const inactivateCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xffeb1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color _maleCardColour = inactivateCardColour;
  // Color _femaleCardColour = inactivateCardColour;

  // void updateColour(Gender selectedGender) {
  //   setState(() {
  //     if (selectedGender == Gender.male) {
  //       if (_maleCardColour == inactivateCardColour) {
  //         _maleCardColour = activateCardColour;
  //         _femaleCardColour = inactivateCardColour;
  //       } else {
  //         _maleCardColour = inactivateCardColour;
  //       }
  //     } else {
  //       if (_femaleCardColour == inactivateCardColour) {
  //         _femaleCardColour = activateCardColour;
  //         _maleCardColour = inactivateCardColour;
  //       } else {
  //         _femaleCardColour = inactivateCardColour;
  //       }
  //     }
  //   });
  // }

  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xff000000),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? activateCardColour
                        : inactivateCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? activateCardColour
                        : inactivateCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activateCardColour,
              cardChild: Container(),
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activateCardColour,
                    cardChild: Container(),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activateCardColour,
                    cardChild: Container(),
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            child: Text(''),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
