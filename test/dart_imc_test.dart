import 'package:dart_imc/person.class.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    Person a = Person("Stal", 55, 1.4);

    expect(a.getCategory().name, "severe_thinness");
  });
}
