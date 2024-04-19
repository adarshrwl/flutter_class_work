class AddTwoNumbersModel {
  final int? first;
  final int? second;

  AddTwoNumbersModel({
    required this.first,
    required this.second,
  });

  int add() {
    return first! + second!;
  }
}
