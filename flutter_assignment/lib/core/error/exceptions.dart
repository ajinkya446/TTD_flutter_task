class ServerExceptions implements Exception {
  final String message;

  ServerExceptions(this.message);
}

class CacheExceptions implements Exception {
  final String message;

  CacheExceptions(this.message);
}
