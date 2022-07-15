import 'package:flutter_assignment/core/network/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/mockito.dart';

class MockDataConnectionChecker extends Mock implements InternetConnectionChecker {}

void main() {
  late NetworkInfoImpl networkInfoImpl;
  late MockDataConnectionChecker mockDataConnectionChecker;

  setUp(() {
    mockDataConnectionChecker = MockDataConnectionChecker();
    networkInfoImpl = NetworkInfoImpl(mockDataConnectionChecker);
  });

  group('is Connected', () {
    test('Should forward data connection checker', () async {
      when(mockDataConnectionChecker.hasConnection).thenAnswer((_) async => true);

      final result = await networkInfoImpl.isConnected;
      verify(mockDataConnectionChecker.hasConnection);
      expect(result, true);
    });
  });
}
