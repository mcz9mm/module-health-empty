library module_health;

import 'data_types.dart';
import 'health_data_point.dart';

class HealthService {
  HealthService._privateConstructor();

  static final HealthService _instance = HealthService._privateConstructor();

  static HealthService get instance => _instance;

  Future<List<HealthDataPoint>> getHealthData({
    /// DateTime Format: DateTime(2021, 11, 09, 0, 0, 0)
    required DateTime startDate,

    /// DateTime Format: DateTime(2021, 11, 09, 23, 59, 59)
    required DateTime endDate,
    List<HealthDataType> types = const [HealthDataType.STEPS],
  }) async {
    return [];
  }

  Future<bool> requestAuthorization(
      {List<HealthDataType> types = const [HealthDataType.STEPS]}) async {
    return false;
  }

  Future<void> revokePermission() async {
    return;
  }
}
