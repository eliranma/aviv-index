import 'dart:convert';
import 'package:http/http.dart' as http;
class RequestResult{
  bool ok;
  dynamic data;
  RequestResult(this.ok, this.data);

}
const PROTOCOL ='http';
const DOMAIN= "192.168.1.18:8000";

Future<RequestResult> http_get(String route, [dynamic data]) async  {
  var dataStr = jsonEncode(data);
  var server =Uri.parse('$PROTOCOL://$DOMAIN/$route?data=$dataStr');
  var result = await http.get(server);
  return RequestResult(true, jsonDecode(result.body));

}
Future<RequestResult> http_post(String route, [dynamic data]) async  {
  var server = Uri.parse('$PROTOCOL://$DOMAIN/$route');
  var dataStr = jsonEncode(data);
  var result = await http.post(server, body: dataStr, headers:{"Content-Type":"application/json"});
  return RequestResult(true, jsonDecode(result.body));

}