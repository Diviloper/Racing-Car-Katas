import 'sensor.dart';

class Alarm {
  final int _low_pressure_threshold = 17;
  final int _high_pressure_threshold = 21;
  final Sensor _sensor = Sensor();
  bool _is_alarm_on = false;

  void check() {
    final psi_pressure_value = _sensor.pop_next_pressure_psi_value();
    if (psi_pressure_value < _low_pressure_threshold ||
        psi_pressure_value > _high_pressure_threshold) {
      _is_alarm_on = true;
    }
  }

  bool get is_alarm_on => _is_alarm_on;
}
