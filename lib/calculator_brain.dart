import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.weight, this.height, this.age}){
    _bmi = (weight / pow(height, 2)) * 10000;
  }

  final int height;
  final int weight;
  final int age;

  double _bmi;

  double getBMI(){
    return _bmi;
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi >= 18.5 && _bmi < 24.9){
      return 'NORMAL';
    } else if (_bmi >= 25 && _bmi < 30){
      return 'OVERWIGHT';
    } else if (_bmi >= 30) {
      return 'OBESITY';
    }
  }

  String getSuggestion(){
    if (_bmi < 18.5) {
      return 'YOU HAVE TO EAT MORE FOR GAIN WEIGHT & MAKE YOURSELF STRONG!';
    } else if (_bmi >= 18.5 && _bmi < 24.9){
      return 'YOUR BODY IS IN NORMAL STAGE. MAKE SURE YOU EAT REGULARY TO MAINTAIN YOUR HEALTH.';
    } else if (_bmi >= 25 && _bmi < 30){
      return 'YOUR BODY IS ALREADY OVERWEIGHT. EAT LESS AND GO FOR EXERCISE';
    } else if (_bmi >= 30) {
      return 'YOU SHOULD VISIT A DOCTOR TO MAKE YOUR HEALTH FIT.';
    }
  }
}