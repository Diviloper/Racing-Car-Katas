import "dart:math";

class Sensor {
  // The reading of the pressure value from the sensor is simulated in this
  // implementation.
  // Because the focus of the exercise is on the other class.

  static const int _OFFSET = 16;
  static final Random _random = Random();

  double pop_next_pressure_psi_value() {
    final pressure_telemetry_value = sample_pressure();
    return _OFFSET + pressure_telemetry_value;
  }

  static double sample_pressure() {
    final pressure_telemetry_value =
        6 * _random.nextDouble() + _random.nextDouble();
    return pressure_telemetry_value;
  }
}
