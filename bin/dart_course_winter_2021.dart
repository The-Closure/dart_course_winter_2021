import 'dart:convert';

import 'package:http/http.dart' as http;

import 'response_value.dart';

void main() async {
  Future<String> value = getCommunity();
  value.then((value) {
    Data data = Data.fromJson(jsonDecode(value));
    print(data.name);
    data.users?.forEach((element) {
      print(element.name);
    });
  });
}

Future<String> getCommunity() async {
  http.Response response = await http.get(
      Uri.parse('http://164.68.96.30:7070/v2/api/community/getbyid?id=4'),
      headers: {'content-type': 'application/json'});
  return response.body;
}
