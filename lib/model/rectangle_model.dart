class RectangleModel {
  double? length;
  double? breadth;

  RectangleModel({
    required this.length,
    required this.breadth,
  });

  double calculateArea() {
    return length! * breadth!;
  }
}
