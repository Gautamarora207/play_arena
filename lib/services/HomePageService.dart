import 'package:flutter_assignment/core/ApiBaseHelper.dart';
import 'package:flutter_assignment/model/PlayArena.dart';
import 'dart:convert';

class HomePageService {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<dynamic> fetchList() async {
    var querryParam = {
      'offset': "0",
      'limit': "10"
    }; // parameters for get request

    final responseData = await _helper.get(
        querryParam:
            querryParam); // calling the get function in ApiBaseHelper to fetch data

    List playArenas = json
        .decode(responseData)
        .map((playArena) => PlayArena.fromJson(playArena))
        .toList(); // decoding the response and parsing each item to PlayArena class

    return playArenas;
  }
}
