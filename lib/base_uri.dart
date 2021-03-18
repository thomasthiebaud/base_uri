library base_uri;

class BaseUri {
  final String version;
  final String host;
  final String scheme;
  final String userInfo;
  final int port;
  final String fragment;
  BaseUri({
    this.version,
    this.host,
    this.scheme,
    this.userInfo,
    this.port,
    this.fragment,
  });

  Uri useWith(
    String unencodedPath, {
    Map<String, dynamic> queryParameters,
  }) {
    final uri = Uri(
      scheme: scheme,
      fragment: fragment,
      host: host,
      port: port,
      userInfo: userInfo,
      queryParameters: queryParameters,
      path: version != null ? '/$version$unencodedPath' : unencodedPath,
    );
    return uri;
  }
}
