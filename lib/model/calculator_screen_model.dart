class CalculatorScreen {
  final int? first;
  final int? second;

  CalculatorScreen({
    required this.first,
    required this.second,
  });

  bool compare() {
    return (first == second);
  }
}
