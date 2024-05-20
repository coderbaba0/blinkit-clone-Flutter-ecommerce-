import 'package:dio/dio.dart';

import 'package:ecom/Services/Exceptions/api_exception.dart';

var kdioBaseOptions = BaseOptions(
  baseUrl: '',
  contentType: Headers.jsonContentType,
  responseType: ResponseType.json,
);

class ApiService {
  static final _dio = Dio(kdioBaseOptions);

  static Future requestMethods({
    String? methodType,
    String? url,
    dynamic body,
  }) async {
    if (url!.isEmpty) throw ApiException(400, "URL is Required");

    try {
      Response response;
      switch (methodType) {
        case "GET":
          response = await _dio.get(url);
          break;
        case "POST":
          response = await _dio.post(url, data: body);
          break;
        case "PUT":
          response = await _dio.put(url, data: body);
          break;
        case "DELETE":
          response = await _dio.delete(url, data: body);
          break;
        default:
          throw ApiException(400, "Invalid Method Type");
      }
      return response.data;
    } on DioException catch (e) {
      return Future.error(ApiException(e.response!.statusCode!, e.message!));
    } catch (e) {
      throw ApiException(500, e.toString());
    }
  }
}
