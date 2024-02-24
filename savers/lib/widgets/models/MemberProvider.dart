import 'package:savers/widgets/models/Member.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MemberProvider {
  Future<Member> _getMember(String _name) async {
    final response =
        await http.get(Uri.parse('http://34.64.101.3:8080/api/member/$_name/'));
    if (response.statusCode == 200) {
      final String decodedBody = utf8.decode(response.bodyBytes);
      return Member.fromJson(jsonDecode(decodedBody));
    } else {
      return Member(
          name: "",
          nickname: "",
          etc: "",
          gender: "",
          age: 0,
          medicalCondition: "");
    }
  }

  Future<Member> getMember(String name) async {
    Member result = await _getMember(name);
    return result;
  }

  Future<bool> postMember(Member member) async {
    final response = await http.post(
      Uri.parse('http://34.64.101.3:8080/api/member/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(member.toJson()),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
