import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mine/structs.dart';

import 'itemreceita.dart';


Future<Resp> fetchData() async {
  final response = await http
      .get(Uri.parse('http://localhost:8080/get_list'));
  print('fasdpnikasdfnikpsdahniopasdophinbnioasdnioasdoasdbhuuoasbndiobnuiadsobnuasd');
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Resp.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Response');
  }
}