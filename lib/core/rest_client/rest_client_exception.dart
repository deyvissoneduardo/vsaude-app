class RestClientException implements Exception {
  late String message;
  late int statusCode;
  dynamic error;

  RestClientException({
    message,
    statusCode,
    error,
  });
}
