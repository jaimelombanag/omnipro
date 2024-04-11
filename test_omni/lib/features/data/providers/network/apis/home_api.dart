import 'package:test_omni/features/data/providers/network/api_endpoint.dart';
import 'package:test_omni/features/data/providers/network/api_provider.dart';
import 'package:test_omni/features/data/providers/network/api_request_representable.dart';
import 'package:test_omni/features/data/providers/network/http_method.dart';

class HomeAPI implements APIRequestRepresentable {
  String? username;
  int? page;
  int? pageSize;

  HomeAPI._({this.username, this.page, this.pageSize});

  HomeAPI.getPhotos(int page, int pageSize)
      : this._(page: page, pageSize: pageSize);

  @override
  String get endpoint => APIEndpoint.newsapi;

  String get path {
    return "/photos";
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  Map<String, String> get headers => {"X-Api-Key": "PUT_HERE"};

  Map<String, String> get query {
    return {"page": "$page", "pageSize": "$pageSize"};
  }

  @override
  get body => null;

  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}
