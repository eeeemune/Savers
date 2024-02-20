import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/views/map/map_view.dart';

abstract class NeumorphismBtn extends StatelessWidget {
  late Widget content;
  late Widget card;
  void onClickCallback();

  Widget get getCard => this.card;
  set setCard(Widget value) {
    this.card = value;
  }

  Widget makeCard(BuildContext context) {
    return InkWell(
      child: Container(
          width: 156,
          height: 124,
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0.62, -0.79),
              end: Alignment(-0.62, 0.79),
              colors: [ColorPalette.white, Color(0xFFF2F4F6)],
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x4C6277AE),
                blurRadius: 10,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              content,
              const SizedBox(height: 8),
              const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.chevron_right, color: ColorPalette.black))
            ],
          )),
      onTap: () => onClickCallback(),
    );
  }
}

class sendWhoCard extends NeumorphismBtn {
  late String where;
  final Function() pageChangeCallback;
  @override
  void onClickCallback() {
    pageChangeCallback();
  }

  sendWhoCard({required this.where, required this.pageChangeCallback}) {
    this.where = where;
    this.content = Text(
      where,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          fontFamily: "Pretendard",
          color: ColorPalette.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    this.card = makeCard(context);
    return this.card;
  }
}
