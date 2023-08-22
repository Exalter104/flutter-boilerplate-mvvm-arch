import 'dart:async';

import 'package:my_flutter_boilerplate/data/app_exception.dart';
import 'package:my_flutter_boilerplate/data/network/base_api_service.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class NetworkApiResponse extends BaseApiServices {
  @override
  Future getApi({required String url, Map<String, String>? header}) async {
    dynamic responseJson;
    try {
      final response = await http
          .get(Uri.parse(url), headers: header)
          .timeout(const Duration(seconds: 15));

      responseJson = returnResponseJson(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException {
      throw RequestTimout();
    }
    return responseJson;
  }

  @override
  Future postApi(
      {required data,
      Map<String, String>? header,
      required String url}) async {}
}

returnResponseJson(http.Response response) {
  switch (response.statusCode) {
    case 200:
      break;
    default:
  }
}
