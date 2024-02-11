import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/views/home/local_widgets/send_who_card.dart';
import 'package:savers/widgets/top_navigator_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TopNavigatorBar(),
        ),
        const SizedBox(height: 24),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            width: double.infinity,
            child: _title()),
        const SizedBox(height: 16),
        Container(
            padding:
                const EdgeInsets.symmetric(horizontal: SizeParameters.page_padding),
            child: _where_911()),
        const SizedBox(height: 24),
        Align(alignment: Alignment.center, child: _SOS()),
        const SizedBox(height: 24),
        Container(
            padding:
                const EdgeInsets.symmetric(horizontal: SizeParameters.page_padding),
            child: _sendWho())
      ],
    ));
  }
}

Widget _where_911() {
  return const Text("미추홀구 긴급 구조대, 2.4km",
      style: TextStyle(
          fontFamily: "Pretendard",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: ColorPalette.fontGray));
}

Widget _title() {
  return RichText(
      text: const TextSpan(
          style: TextStyle(
              fontSize: 32,
              fontFamily: "Pretendard",
              height: 1.5,
              color: ColorPalette.black),
          children: [
        TextSpan(text: "평균적으로 "),
        TextSpan(
            text: "2분",
            style: TextStyle(
                color: ColorPalette.red, fontWeight: FontWeight.w700)),
        TextSpan(text: "이내에 ", style: TextStyle(fontWeight: FontWeight.w700)),
        TextSpan(
            text: "\n구조대가 도착", style: TextStyle(fontWeight: FontWeight.w700)),
        TextSpan(text: "해요"),
      ]));
}

Widget _SOS() {
  return SizedBox(
    width: 248,
    height: 248,
    child: Stack(children: [
      Container(
        width: 248,
        height: 248,
        decoration: const ShapeDecoration(
          gradient: RadialGradient(
            colors: [Color(0x00EC232F), Color(0x19EC232F)],
            stops: <double>[0.8, 1.0],
          ),
          shape: CircleBorder(),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: Container(
          width: 200,
          height: 200,
          decoration: const ShapeDecoration(
            gradient: RadialGradient(
              colors: [Color(0x00EC232F), Color(0x19EC232F)],
              stops: <double>[0.8, 1.0],
            ),
            shape: CircleBorder(),
          ),
        ),
      ),
      Align(
          alignment: Alignment.center,
          child: Container(
            width: 152,
            height: 152,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(-0.19, -0.98),
                end: Alignment(0.19, 0.98),
                colors: [Color(0xFFFF5573), Color(0xFFEC232F)],
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFFFB5C0)),
                borderRadius: BorderRadius.circular(265),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0xB2FF002D),
                  blurRadius: 22.90,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '긴급신고',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.32,
                  ),
                ),
              ],
            ),
          ))
    ]),
  );
}

Widget _sendWho() {
  return Material(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        textAlign: TextAlign.start,
        text: const TextSpan(
            text: "누구에게 ",
            style: TextStyle(
              color: ColorPalette.black,
              fontSize: 16,
            ),
            children: [
              TextSpan(
                  text: "의료정보",
                  style: TextStyle(color: ColorPalette.hyperLink)),
              TextSpan(text: "와 내 위치를 전송하나요?")
            ]),
      ),
      const SizedBox(height: 16),
      SizedBox(
          width: double.infinity,
          height: 138.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                  child: SendWhoCard("가장 가까운 구급대")),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                  child: SendWhoCard("주변에 있는\n세이버")),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                  child: SendWhoCard("앱에 등록된\n긴급 연락처")),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                  child: SendWhoCard("앱에 등록된\n긴급 연락처")),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                  child: SendWhoCard("앱에 등록된\n긴급 연락처")),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                  child: SendWhoCard("앱에 등록된\n긴급 연락처")),
            ],
          ))
    ],
  ));
}
