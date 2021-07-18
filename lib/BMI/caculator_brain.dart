import 'dart:math';

class CaCulatorBrain {
  final int height;
  final int weight;
  late double bmi;

  CaCulatorBrain({required this.height, required this.weight});

  String caculatorBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (bmi <= 18.5) {
      return "Nhẹ cân";
    } else if (bmi <= 24.9) {
      return "Tiền béo phì";
    } else if (bmi <= 29) {
      return "Béo phì độ 1";
    } else {
      return "Béo phì độ 2";
    }
  }

  String getInterpretation() {
    if (bmi <= 18.5) {
      return "Nhẹ cân";
    } else if (bmi <= 24.9) {
      return "Tiền béo phì";
    } else if (bmi <= 29) {
      return "Béo phì độ 1";
    } else {
      return "Béo phì độ 2";
    }
  }
}
