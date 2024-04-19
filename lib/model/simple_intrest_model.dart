class SimpleIntrestModel {
  final double? principle;
  final double? time;
  final double? rate;

  SimpleIntrestModel({
    required this.principle,
    required this.time,
    required this.rate,
  });

  double calcInterest() {
    return (principle! * time! * rate!) / 100;
  }
}
