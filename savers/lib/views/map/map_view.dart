import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/widgets/top_navigator_bar.dart';
import 'package:savers/widgets/title.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TopNavigatorBar(),
        ),
        const SizedBox(height: 24),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: title([
              TextSpan(
                  text: "안전거리 ", style: TextStyle(fontWeight: FontWeight.w700)),
              TextSpan(
                text: "내에\n",
              ),
              TextSpan(
                  text: "3명",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: ColorPalette.indigo)),
              TextSpan(
                  text: "의 세이버", style: TextStyle(fontWeight: FontWeight.w700)),
              TextSpan(text: "가 있어요"),
            ])),
        const SizedBox(height: 16),
        Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 16, horizontal: SizeParameters.page_padding),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Map.png"),
                              fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x4C6277AE),
                              blurRadius: 10,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ]),
                    ),
                    MapLocationCard()
                  ],
                )))
      ],
    ));
  }
}

class MapLocationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: EdgeInsets.all(16),
      height: 168,
      width: double.infinity,
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0.94, -0.34),
              end: Alignment(-0.94, 0.34),
              colors: [Colors.white, Color(0xFFF2F4F6)]),
          borderRadius: BorderRadius.circular(30)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Icon(Icons.local_hospital, color: ColorPalette.red, size: 32),
            SizedBox(width: 4),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xFFE1E4E6)),
                child: Text(
                  "2.6km",
                  style: TextStyle(
                      color: Color(0xFF686B6E),
                      fontFamily: "Pretendard",
                      fontSize: 14),
                ))
          ],
        ),
        SizedBox(height: 8),
        Text(
          "인하대학교 용현캠퍼스 정석\n학술 정보관",
          style: TextStyle(
              color: ColorPalette.black,
              fontSize: 20,
              fontWeight: FontWeight.w800,
              fontFamily: "Pretendard",
              height: 1.5),
        ),
        SizedBox(height: 8),
        _HyperlinkMapApp()
      ]),
    ));
  }

  Widget _HyperlinkMapApp() {
    return (InkWell(
        onTap: () {},
        child: Row(
          children: [
            Text("지도앱에서 확인하기",
                style: TextStyle(
                    color: ColorPalette.hyperLink,
                    fontSize: 16,
                    fontFamily: "Pretendard")),
            SizedBox(width: 8),
            Icon(Icons.open_in_new, color: ColorPalette.hyperLink, size: 16)
          ],
        )));
  }
}
