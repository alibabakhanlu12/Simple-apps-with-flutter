// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:bmi_calculator/contasts.dart';
import 'package:bmi_calculator/Components/reusable.dart';

class resaultsPage extends StatelessWidget  {

  String Res1='' ;
   String Res2='';
    String Res3='';

  resaultsPage({required this.Res1,required this.Res2,required this.Res3});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color((0xFF090C22)),
          title: const Center(
            child: Text('resulats', style: TextStyle(fontSize: 30)),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 48,top: 10,bottom: 10),
                  alignment: Alignment.bottomLeft,

                    child: const Text('Your Resualt', style: TitleWidget)),
              ),
              Expanded(
                flex: 5,
                child: Reuse(
                  colour: KActiveColor,
                  cartChild: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:   <Widget>[



                      Text(Res2,style:Resulte),
                      Text(Res1 , style:Numberresulyt ),
                      Text(Res3 ,textAlign: TextAlign.center,style:Description )
                                                    ],

                  ),
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.pop(context);
                },
                child: Container(
                  child: const Center(child: Text('ReCalculate',style: TextStyle( fontSize: 40, fontWeight: FontWeight.bold,),)),
                  color: const Color(0xFFEB1555),
                  margin: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 80,
                ),
              ),
            ]));
  }
}
