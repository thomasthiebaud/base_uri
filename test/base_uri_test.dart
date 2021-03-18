import 'package:base_uri/base_uri.dart';
import 'package:test/test.dart';

void main() {
  test('create a base URI and use it with different paramaters', () {
    final baseUri = BaseUri(scheme: 'https', host: 'example.com');
    expect(
      baseUri.useWith('/path').toString(),
      equals('https://example.com/path'),
    );
    expect(
      baseUri.useWith('/', queryParameters: {"test": "yes"}).toString(),
      equals('https://example.com/?test=yes'),
    );
    expect(
      baseUri.useWith('/path', queryParameters: {"test": "yes"}).toString(),
      equals('https://example.com/path?test=yes'),
    );
  });

  test('create a base URI and use it with different paramaters and a version',
      () {
    final baseUri =
        BaseUri(scheme: 'https', host: 'example.com', version: 'v1');
    expect(
      baseUri.useWith('/path').toString(),
      equals('https://example.com/v1/path'),
    );
    expect(
      baseUri.useWith('/', queryParameters: {"test": "yes"}).toString(),
      equals('https://example.com/v1/?test=yes'),
    );
    expect(
      baseUri.useWith('/path', queryParameters: {"test": "yes"}).toString(),
      equals('https://example.com/v1/path?test=yes'),
    );
  });
}
