import "package:dio/dio.dart";
import "package:fluttertoast/fluttertoast.dart";

import "../HttpMethods/requesting_methods.dart";

class AsyncAction {
  static Future asynAction({
    String? url,
    String? methodType,
    String? httpHeaders,
    dynamic body,
    String errorMessage = "Default Error Message",
    bool showToast = true,
  }) async {
    try {
      var response = await ApiService.requestMethods(
        url: url,
        methodType: methodType,
        body: body,
      );
      return response;
    } on DioException catch (e) {
      var apiErrorMessage = e.message ?? errorMessage;
      Fluttertoast.showToast(msg: apiErrorMessage);
    }
  }
}
