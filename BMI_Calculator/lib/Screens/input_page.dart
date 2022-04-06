import 'package:bmi_calculator/Screens/resualts_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Components/reusable.dart';
import 'package:bmi_calculator/Components/icon_contant.dart';
import 'package:bmi_calculator/Calculator_brain.dart';
import 'package:bmi_calculator/contasts.dart';
enum Gender {
  male,
  female,
  Null,
}

int height = 180;
int weight = 89;
int age = 20;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.Null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF090C22),
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body:

        Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Reuse(
                      colour: selectedGender == Gender.male
                          ? KActiveColor
                          : KInactiveColor,
                      cartChild: IconWidget(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Reuse(
                      colour: selectedGender == Gender.female
                          ? KActiveColor
                          : KInactiveColor,
                      cartChild: IconWidget(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Reuse(
                        colour: KActiveColor,
                        cartChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'HEIGHT',
                              style: labelTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(height.toString(), style: NumberTextStyle),
                                const Text(
                                  'CM',
                                  style: labelTextStyle,
                                ),
                              ],
                            ),
                            SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.white,
                                  thumbColor: const Color(0xFFEB1555),
                                  overlayColor: const Color(0x29EB1555),
                                  thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 15),
                                  overlayShape: const RoundSliderOverlayShape(
                                      overlayRadius: 30),
                                ),
                                child: Slider(
                                  value: height.toDouble(),
                                  min: 50,
                                  max: 220,
                                  activeColor: const Color(0xFFFFFFFF),
                                  inactiveColor: const Color(0xFF8D8E98),
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height = newValue.round();
                                    });
                                  },
                                ))
                          ],
                        )))
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: Reuse(
                      colour: KActiveColor,
                      cartChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: NumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                backgroundColor: const Color(0xFF4C4F5E),
                                child: const Icon(FontAwesomeIcons.minus,color: Colors.white),
                              ),
                              const SizedBox(width: 20),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: const Color(0xFF4C4F5E),
                                child: const Icon(FontAwesomeIcons.add,color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ))),
              Expanded(
                  child: Reuse(
                      colour: KActiveColor,
                      cartChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'AGE',
                            style: labelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: NumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: const Color(0xFF4C4F5E),
                                child: const Icon(FontAwesomeIcons.minus,color: Colors.white,),
                              ),
                              const SizedBox(width: 20),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: const Color(0xFF4C4F5E),
                                child: const Icon(FontAwesomeIcons.add,color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )))
            ],
          )),
          GestureDetector(
            onTap:(){
              Calculator cal = Calculator(weight: weight, height: height);
              Navigator.push(context,
              MaterialPageRoute(builder: (context) =>   resaultsPage(
                Res1:cal.calculate() ,
                Res2: cal.getResulate(),
                Res3:cal.getDescription() ,
              ) ));



    },
            child: Container(
             child: const Center(child: Text('Calculate',style: TextStyle( fontSize: 40, fontWeight: FontWeight.w700,),)),
              color: const Color(0xFFEB1555),
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
