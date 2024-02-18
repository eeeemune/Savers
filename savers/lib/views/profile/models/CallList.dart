import 'dart:convert';
import 'package:savers/views/profile/models/Call.dart';

class CallList {
  String getCallIDList() {
    return ('''[
    {
        "ID": "1",
        "name": "엄마",
        "callNumber": "010-4313-7962"
    },
    {
        "ID": "2",
        "name": "엄마2",
        "callNumber": "010-4313-7962"
    },
    {
        "ID": "3",
        "name": "엄마3",
        "callNumber": "010-4313-7962"
    },
    {
        "ID": "4",
        "name": "엄마4",
        "callNumber": "010-4313-7962"
    },
    {
        "ID": "5",
        "name": "엄마5",
        "callNumber": "010-4313-7962"
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
