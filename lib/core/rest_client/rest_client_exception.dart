class RestClientException implements Exception {
  String? message;
  int? statusCode;
  dynamic error;

  RestClientException({
    message,
    statusCode,
    error,
  });
}
