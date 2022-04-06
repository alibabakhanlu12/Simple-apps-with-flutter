import 'dart:math';
class Calculator{


  Calculator({required this.weight,required this.height});
  final int  height;
  final int weight;
  double _bmi=0;
  String calculate(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(2);
  }
  String getResulate(){
    if(_bmi>25){
      return 'Overweight';
    }else if(_bmi>25 && _bmi>18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getDescription(){
    if(_bmi>25){
      return ' You have a higher than Normal body weight. Try to exersice more';
    }
    else if(_bmi<25 && _bmi>18.5){
      return 'Thats grate !!you have normal body weight ';
    }else {
      return 'you have lower than normal body weight. you can eat a bit more';
    }

  }

}