// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:savers/views/home/home_view.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/widgets/info_card.dart';
import 'package:savers/main.dart';

class SOSView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.backGray,
        leading: InkWell(
          borderRadius: BorderRadius.circular(100),
          child: const Icon(Icons.navigate_before,
              size: 24.0, color: ColorPalette.black),
          onTap: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text("긴급 구조 요청",
            style: TextStyle(
                color: ColorPalette.black,
                fontFamily: "Pretendard",
                fontSize: 16)),
        elevation: 0,
      ),
      body: _Body(),
      bottomNavigationBar: _BottomNav(),
      extendBody: true,
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(children: [
          SizedBox(height: 32),
          _Title(title: "긴급 심정지\n상황이 발생했습니다."),
          SizedBox(height: 32),
          _Timer(),
          SizedBox(height: 24),
          // InfoCard(),
          SizedBox(height: 56),
          _Title(title: "구조대가 도착하기 전\n응급 조치를 시행하세요."),
          SizedBox(height: 24),
          _CPRVideo(),
          SizedBox(height: SizeParameters.bottomNavigatorHeight)
        ])
      ],
    );
  }
}

class _Timer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeParameters.page_padding),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: Shadows.card,
                color: ColorPalette.white),
            alignment: Alignment.center,
            width: double.infinity,
            height: 136,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "03:02:05",
                  style: TextStyle(
                      color: ColorPalette.red,
                      fontSize: 40,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 16),
                Text(
                  "심정지 발생 이후 경과 시간",
                  style: TextStyle(
                      color: ColorPalette.black,
                      fontSize: 16,
                      fontFamily: "Pretendard"),
                )
              ],
            )));
  }
}

class _Title extends StatelessWidget {
  final String title;
  _Title({required this.title});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: ColorPalette.black,
          fontSize: 32,
          height: 1.5,
          fontFamily: "Pretendard",
          fontWeight: FontWeight.w700),
    ));
  }
}

// class _CPRVideo extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return YoutubePlayer()
//   }
// }

class _CPRVideo extends StatefulWidget {
  @override
  State<_CPRVideo> createState() => _CPRVideoState();
}

class _CPRVideoState extends State<_CPRVideo> {
  static String youtubeId = 'pLvFWLCwn6M';
  final YoutubePlayerController _con = YoutubePlayerController(
    initialVideoId: youtubeId,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeParameters.page_padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: YoutubePlayer(
          controller: _con,
        ),
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  void onClick(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
          onTap: () => onClick(context),
          child: Container(
            child: Text("구조가 완료되었습니다.",
                style: TextStyle(
                  color: ColorPalette.white,
                  fontFamily: "Pretendard",
                  fontSize: 20,
                )),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorPalette.red),
          )),
      padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
      height: SizeParameters.bottomNavigatorHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, -0.5),
          colors: [Color(0x00F2F4F6), Color(0xFFF2F4F6)],
        ),
      ),
    );
  }
}
