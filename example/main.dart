import 'package:base_uri/base_uri.dart';

void main() {
  final BASE_URI = BaseUri(
    scheme: 'https',
    host: 'example.com',
    version: 'v1',
  );

  // https://example.com/v1/path
  BASE_URI.useWith('/path');

  // https://example.com/v1/path?test=yes
  BASE_URI.useWith('/path', queryParameters: {'test': 'yes'});
}
