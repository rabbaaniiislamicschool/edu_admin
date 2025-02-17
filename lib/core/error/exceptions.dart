class NetworkException implements Exception {
  final String message;
  NetworkException([this.message = 'A network error occurred']);

  @override
  String toString() => message;
}

class UnauthorizedException implements Exception {
  final String message;
  UnauthorizedException([this.message = 'Unauthorized access']);

  @override
  String toString() => message;
}