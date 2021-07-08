class RestClientResponse<T> {
  T? data;
  int? statusCode;
  String? message;

  RestClientResponse({
    data,
    statusCode,
    message,
  });

  T? get token => data;
}
