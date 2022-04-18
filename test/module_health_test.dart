import 'package:flutter_test/flutter_test.dart';
import 'package:module_health/module_health.dart';

void main() {
  test('getHealthData is empty', () async {
    const period = 30;
    final currentDate = DateTime.now();
    final startDate = currentDate.subtract(const Duration(days: period));

    final healthData = await HealthService.instance.getHealthData(
      startDate:
          DateTime(startDate.year, startDate.month, startDate.day, 0, 0, 0),
      endDate: DateTime(
          currentDate.year, currentDate.month, currentDate.day, 23, 59, 59),
    );
    expect(healthData, []);
  });

  test('requestAuthorization is denied', () async {
    final isAuthorized = await HealthService.instance
        .requestAuthorization(types: [HealthDataType.STEPS]);
    expect(isAuthorized, false);
  });
}
