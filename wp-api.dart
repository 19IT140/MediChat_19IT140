import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetchWpPosts() async {
  final response = await http.get(
      "https://flutternerd.com/index.php/wp-json/wp/v2/posts",
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}
Future fetchWpPostImageUrl(url) async {
  final response = await http.get(url, headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}