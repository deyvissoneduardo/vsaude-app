class RestClientResponse<T> {
  late T data;
  late int statusCode;
  late String message;

  RestClientResponse({
    data,
    statusCode,
    message,
  });
}
