import 'package:savers/widgets/send_who_card.dart';
import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'dart:convert';

class Call {
  late String name;
  late String callNumber;
  late String id;
  Call({required this.name, required this.callNumber, required this.id});
  factory Call.fromJson(Map<String, dynamic> json) {
    return Call(
      id: json['ID'],
      name: json['name'],
      callNumber: json['callNumber'],
    );
  }
}

class EmergencyCall extends NeumorphismBtn {
  late Call callNode;

  @override
  void onClick(BuildContext context) {
    print("서버에 update 요청(ID: ${callNode.id})");
  }

  EmergencyCall(Call callTarget) {
    this.callNode = callTarget;
    setContent(callNode.name, callNode.callNumber);
  }

  @override
  Widget build(BuildContext context) {
    this.card = makeCard(context);
    return (this.card);
  }

  void setContent(String name, String callNumber) {
    this.content =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        name,
        style: TextStyle(
            color: ColorPalette.black,
            fontSize: 20,
            fontFamily: "Pretendard",
            fontWeight: FontWeight.w800),
      ),
      SizedBox(height: 8),
      Text(
        callNumber,
        style: TextStyle(
            color: ColorPalette.fontGray,
            fontFamily: "Pretendard",
            fontSize: 16),
      )
    ]);
  }
}
