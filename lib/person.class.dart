import 'dart:math';

import 'package:dart_imc/imc_categories.enum.dart';

class Person {
  String name;
  double weight;
  double height;

  Person(this.name, this.height, this.weight);

  double get imc => (weight / pow(height, 2));

  ImcCategories getCategory() {
    return ImcCategories.category(imc);
  }
}
