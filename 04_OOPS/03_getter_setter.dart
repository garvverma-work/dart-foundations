
class Temperature {

  double _celsius = 0;

  double get celsius => _celsius;

  set celsius(double value) {
    if(value < -273.15){
      throw ArgumentError("Celsius can't be below -273.15");
    }
    _celsius = value;
  }

  double get fahrenheit => _celsius * 9/5 + 32;

  set fahrenheit(double value) {

    double convertedCelsius = (value - 32) * 5 / 9;

    if(convertedCelsius < -273.15){
      throw ArgumentError("Fahrenheit value is below absolute zero");
    }
    _celsius = convertedCelsius;
  }

  double get kelvin => _celsius + 273.15;

  set kelvin(double value) {

    if(value < 0){
      throw ArgumentError("Kelvin can not be negative");
    }
    double convertedCelsius = value - 273.15;
    _celsius = convertedCelsius;
  }

  String get description => "${celsius.toStringAsFixed(1)} C "
                            "(${fahrenheit.toStringAsFixed(2)} F, ${kelvin.toStringAsFixed(2)}) K";
}

void main() {

  Temperature temp = Temperature();

  temp.celsius = 25;
  print(temp.description);

}