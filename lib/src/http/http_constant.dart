class HttpConstant {
  HttpConstant._();

  // ignore: library_private_types_in_public_api
  static _ContentType contentType = _ContentType();

  // ignore: library_private_types_in_public_api
  static _TokenType tokenType = _TokenType();

  // ignore: library_private_types_in_public_api
  static _Method method = _Method();
}

class _ContentType {
  String json = "application/json";
}

class _TokenType {
  String bearer = "Bearer ";
}

class _Method {
  String get = "GET";
  String post = "POST";
  String put = "PUT";
  String delete = "DELETE";
  String patch = "PATCH";
}
