enum ImcCategories {
  severe_thinness(0.0),
  moderate_thinness(16.0),
  mild_thinness(17.0),
  normal(18.5),
  overweight(25.0),
  obese_1(30.0),
  obese_2(35.0),
  obese_3(40.0);

  final double minimal_imc;
  const ImcCategories(this.minimal_imc);

  static ImcCategories category(double imc) {
    return ImcCategories.values.reversed.firstWhere(
      (categories) => imc >= categories.minimal_imc,
      orElse: () => ImcCategories.severe_thinness,
    );
  }
}
