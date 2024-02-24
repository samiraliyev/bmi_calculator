class Calculate {
  int? weight;
  int? height;
  int? age;
  int? bmi;

  int calculateBMI() {
    return bmi = int.parse((weight! / (height! * height!)) as String);
  }
}
