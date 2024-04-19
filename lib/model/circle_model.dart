class CircleModel {
  final double? radius;
  static const pi = 3.14;
  CircleModel({
    required this.radius,
  });

  double calcCircle() {
    return radius! * radius! * pi;
  }
}
