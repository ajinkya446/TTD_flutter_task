abstract class Failure {
  // // so that Equatable can perform value comparison.
  // Failure([List properties = const <dynamic>[]]): super(properties);
}

/// this are custom Failure classes
class ServerFailure extends Failure {
  final String message;

  ServerFailure(this.message);
}

class CacheFailure extends Failure {
  final String message;

  CacheFailure(this.message);
}
