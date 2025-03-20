enum ImcCategories {
  severeThinness(0.0),
  moderateThinness(16.0),
  mildThinness(17.0),
  normal(18.5),
  overweight(25.0),
  obese_1(30.0),
  obese_2(35.0),
  obese_3(40.0);

  final double minimalImc;
  const ImcCategories(this.minimalImc);

  static ImcCategories category(double imc) {
    return ImcCategories.values.reversed.firstWhere(
      (categories) => imc >= categories.minimalImc,
      orElse: () => ImcCategories.severeThinness,
    );
  }
}
