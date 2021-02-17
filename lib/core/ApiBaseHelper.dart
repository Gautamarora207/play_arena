import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_assignment/constants/constants.dart';

class ApiBaseHelper {
  Future<dynamic> get({dynamic querryParam}) async {
    try {
      final dynamic uri = await getUrl(param: querryParam);

      final response = await http.get(
        uri,
      ); // fetching data from get request
      return response.body;
    } on SocketException {
      throw 'No Internet connection';
    }
  }

  Future<dynamic> getUrl({dynamic param}) async {
    String url = URL;
    String base =
        url.substring(url.indexOf('://') + 3, url.indexOf('.com') + 4);
    String sub = url.substring(url.indexOf('.com') + 4);
    var uri = Uri.http(base, sub, param);
    return uri;
  }
}
