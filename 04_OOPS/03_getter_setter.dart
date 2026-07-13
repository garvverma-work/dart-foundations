class Temperature {

  // Private field to store temperature in Celsius.
  double _celsius = 0;

  // Getter for Celsius.
  double get celsius => _celsius;

  // Setter for Celsius with validation.
  set celsius(double value) {
    if(value < -273.15){
      throw ArgumentError("Celsius can't be below -273.15");
    }
    _celsius = value;
  }

  // Getter that converts Celsius to Fahrenheit.
  double get fahrenheit => _celsius * 9/5 + 32;

  // Setter that converts Fahrenheit to Celsius.
  set fahrenheit(double value) {

    double convertedCelsius = (value - 32) * 5 / 9;

    if(convertedCelsius < -273.15){
      throw ArgumentError("Fahrenheit value is below absolute zero");
    }
    _celsius = convertedCelsius;
  }

  // Getter that converts Celsius to Kelvin.
  double get kelvin => _celsius + 273.15;

  // Setter that converts Kelvin to Celsius.
  set kelvin(double value) {

    if(value < 0){
      throw ArgumentError("Kelvin can not be negative");
    }
    double convertedCelsius = value - 273.15;
    _celsius = convertedCelsius;
  }

  // Returns the temperature in all three units.
  String get description => "${celsius.toStringAsFixed(1)} C "
      "(${fahrenheit.toStringAsFixed(2)} F, ${kelvin.toStringAsFixed(2)}) K";
}

void main() {

  Temperature temp = Temperature();

  temp.celsius = 25;
  print(temp.description);

}