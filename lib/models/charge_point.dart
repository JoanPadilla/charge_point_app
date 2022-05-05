
class ChargePoint {
  
  final String name;
  final List<double> coords;
  bool available;
  
  ChargePoint({
    required this.name,
    required this.coords,
    this.available = false,
  });
  
}