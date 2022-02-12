
import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper{

  final url;
  NetworkHelper({this.url});

  Future getDataFromAPI() async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);

    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}