import 'package:test/test.dart';

import 'alarm.dart';

void main() {
  test('Alarm is off by default', () {
    final alarm = Alarm();
    expect(alarm.is_alarm_on, false);
  });
}