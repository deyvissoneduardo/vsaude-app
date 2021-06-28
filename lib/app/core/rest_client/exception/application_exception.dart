abstract class ApplicationException implements Exception {
  late int _code;
  ApplicationException({code});

  int get code => _code;

  @override
  String toString() => 'ApplicationException(_code: $_code)';
}
