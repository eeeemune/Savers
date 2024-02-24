import 'package:http/http.dart' as http;
import 'package:savers/views/map/models/nearSavers.dart';

class NearSaversProvider {
  // Uri uri = Uri.parse("http://34.64.101.3:8080/api/member/khdkkhdd/");
  Uri uri = Uri.parse("http://34.64.101.3:8080/api/member/khdkkhdd/");

  Future<String> getNum() async {
    String num = "ERROR";
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      num = response.body;
      print(response);
    }

    return num;
  }
}
