abstract class API {
  Future<dynamic> get(String path, {Map<String, String>? headers});
  Future<dynamic> post(
    String path, {
    dynamic body,
    Map<String, String>? headers,
  });
}
