import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/views/map/providers/near_savers_provider.dart';
import 'package:savers/widgets/send_who_card.dart';
import 'package:savers/widgets/top_navigator_bar.dart';
import 'package:savers/widgets/title.dart';
import 'package:savers/views/map/map_view.dart';
import 'package:savers/views/SOS/SOS_view.dart';

class HomeView extends StatelessWidget {
  final Function(int) changePage;
  const HomeView({Key? key, required this.changePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TopNavigatorBar(),
          ),
          const SizedBox(height: 24),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: double.infinity,
              child: title([
                TextSpan(text: "평균적으로 "),
                TextSpan(
                    text: "2분",
                    style: TextStyle(
                        color: ColorPalette.red, fontWeight: FontWeight.w700)),
                TextSpan(
                    text: "이내에 ",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(
                    text: "\n구조대가 도착",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(text: "해요"),
              ])),
          const SizedBox(height: 16),
          Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: SizeParameters.page_padding),
              child: _where_911()),
          const SizedBox(height: 24),
          Align(
              alignment: Alignment.center,
              child: _SOS(
                onClick: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SOSView()))
                },
              )),
          const SizedBox(height: 24),
          Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: SizeParameters.page_padding),
              child: _SendWho(
                onClickCallback: changePage,
              )),
          SizedBox(height: SizeParameters.bottomNavigatorHeight)
        ],
      )
    ]);
  }
}

Widget _where_911() {
  return Text("미추홀구 긴급 구조대, 2.4km",
      style: TextStyle(
          fontFamily: "Pretendard",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: ColorPalette.fontGray));
}

class _SOS extends StatelessWidget {
  final Function() onClick;
  const _SOS({Key? key, required this.onClick}) : super(key: key);
  @override
  Widget build(context) {
    return SizedBox(
        width: 248,
        height: 248,
        child: InkWell(
          onTap: () => onClick(),
          borderRadius: BorderRadius.circular(248),
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
                      side:
                          const BorderSide(width: 1, color: Color(0xFFFFB5C0)),
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
        ));
  }
}

class _SendWho extends StatelessWidget {
  final Function(int) onClickCallback;
  _SendWho({required this.onClickCallback});

  @override
  Widget build(context) {
    return Column(
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
            height: 148.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                    child: sendWhoCard(
                      where: "가장 가까운\n구급대",
                      pageChangeCallback: () => onClickCallback(1),
                    )),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                    child: sendWhoCard(
                        where: "주변에 있는\n세이버",
                        pageChangeCallback: () => onClickCallback(1))),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                    child: sendWhoCard(
                        where: "앱에 등록된\n긴급 연락처",
                        pageChangeCallback: () => onClickCallback(2))),
              ],
            ))
      ],
    );
  }
}
