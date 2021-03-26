library base_uri;

/*
 * Represents a base uri that can be used around with your code with different
 * parameters
 * 
 * [version] will be added before your path. It must not include a leading / 
 */
class BaseUri {
  final String? version;
  final String? host;
  final String? scheme;
  final String? userInfo;
  final int? port;
  final String? fragment;
  BaseUri({
    this.version,
    this.host,
    this.scheme,
    this.userInfo,
    this.port,
    this.fragment,
  });

  /*
   * Use your base uri with the specified [path] and [queryParameters]
   * 
   * [path] must contain a leading /
   */
  Uri useWith(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    final uri = Uri(
      scheme: scheme,
      fragment: fragment,
      host: host,
      port: port,
      userInfo: userInfo,
      queryParameters: queryParameters,
      path: version != null ? '/$version$path' : path,
    );
    return uri;
  }
}
