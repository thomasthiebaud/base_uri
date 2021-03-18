# base_uri

A tiny wrapper around Uri to easily define a base uri. Supports api versions.

## Getting Started

Create a base Uri

```
final BASE_URI = BaseUri(
  scheme: 'https',
  host: 'example.com',
  version: 'v1',
);
```

then use it accross your app

```
BASE_URI.useWith('/path'); // https://example.com/v1/path
BASE_URI.useWith('/path', queryParameters: {'test': 'yes'}); // https://example.com/v1/path?test=yes
```