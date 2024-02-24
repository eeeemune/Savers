import 'dart:convert';
import 'package:savers/views/profile/models/Call.dart';

class CallList {
  String getCallIDList() {
    return ('''[
    {
        "ID": "1",
        "name": "엄마",
        "callNumber": "010-2352-7962"
    },
    {
        "ID": "2",
        "name": "아빠",
        "callNumber": "010-5612-4524"
    },
    {
        "ID": "3",
        "name": "박길순(지인)",
        "callNumber": "010-3921-7631"
    },
    {
        "ID": "4",
        "name": "스티브(지인)",
        "callNumber": "010-6234-1351"
    },
    {
        "ID": "5",
        "name": "언니",
        "callNumber": "010-5231-6734"
    }
]''');
  }

  List<Call> parseCallList(String callListJson) {
    final data = json.decode(callListJson);
    return List<Call>.from(data.map((item) => Call.fromJson(item)));
  }

  List<Call> get() {
    return parseCallList(getCallIDList());
  }
}
