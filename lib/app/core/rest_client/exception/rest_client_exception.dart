class RestClientException implements Exception {
  String? message;
  int? statusCode;
  dynamic error;

  RestClientException({
    this.message,
    this.statusCode,
    this.error,
  });
}
