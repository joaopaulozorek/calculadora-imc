import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Acima do peso';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você está com o Índice de Massa Corporal acima do indicado, tente se exercitar mais!';
    } else if (_bmi > 18) {
      return 'Você está com o Índice de Massa Corporal normal, bom trabalho!';
    } else {
      return 'Você está com o Índice de Massa Corporal abaixo do indicado, tente comer um pouco mais!';
    }
  }
}
