import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/views/profile/models/CallList.dart';
import 'package:savers/widgets/title.dart';
import 'package:savers/widgets/top_navigator_bar.dart';
import 'package:savers/views/profile/models/Call.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);

  Widget callCards = _CallCardList();

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(height: 16),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TopNavigatorBar(),
      ),
      const SizedBox(height: 24),
      Padding(
        child: title([
          TextSpan(text: "위급한 상황에는\n"),
          TextSpan(
              text: "의료정보를 자동으로\n전송",
              style: TextStyle(fontWeight: FontWeight.w700)),
          TextSpan(text: "해요"),
        ]),
        padding: EdgeInsets.symmetric(horizontal: SizeParameters.page_padding),
      ),
      SizedBox(height: 24),
      Container(
          margin: EdgeInsets.symmetric(horizontal: SizeParameters.page_padding),
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              boxShadow: Shadows.card,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage("assets/images/infoCard.png"),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("강심장",
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorPalette.white,
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: 16),
              _lableText(label: "나이", content: "만 67세"),
              SizedBox(height: 8),
              _lableText(label: "성별", content: "여성"),
              SizedBox(height: 8),
              _lableText(label: "기저질환", content: "편도염"),
              SizedBox(height: 8),
              Text("특이사항",
                  style: TextStyle(
                      color: ColorPalette.white,
                      fontSize: 16,
                      fontFamily: "Pretendard",
                      height: 1.5)),
              SizedBox(height: 8),
              Text("오늘 점심은 가메이 어때요 가메이에는 다이어트에 좋은 연어회덮밥이 있습니당",
                  style: TextStyle(
                      color: ColorPalette.white,
                      fontSize: 16,
                      fontFamily: "Pretendard",
                      height: 1.5)),
              SizedBox(height: 8),
              Container(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    child: Container(
                      width: 48,
                      height: 48,
                      child: Icon(Icons.create,
                          color: ColorPalette.white, size: 24),
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.49, -0.87),
                          end: Alignment(-0.49, 0.87),
                          colors: [
                            Colors.white.withOpacity(0.3),
                            Colors.white.withOpacity(0)
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1,
                              color: Color.fromARGB(129, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(37),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ))
            ],
          )),
      SizedBox(height: 40),
      Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeParameters.page_padding),
          child: title([
            TextSpan(
                text: "3명",
                style: TextStyle(
                    color: ColorPalette.blue, fontWeight: FontWeight.w700)),
            TextSpan(
                text: "에게 ", style: TextStyle(fontWeight: FontWeight.w700)),
            TextSpan(text: "자동으로\n"),
            TextSpan(
                text: "구조 신호를 전송",
                style: TextStyle(fontWeight: FontWeight.w700)),
            TextSpan(text: "해요"),
          ])),
      SizedBox(height: 24),
      _CallCardList(),
      SizedBox(height: 40)
    ]);
  }
}

Widget _CallCardList() {
  List<Call> callNodes = CallList().get();
  List<Widget> callCards = callNodes.map((e) => EmergencyCall(e)).toList();
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            mainAxisExtent: 142),
        children: callCards,
      ));
}

Widget _lableText({required String label, required String content}) {
  return (RichText(
    text: TextSpan(
        style: TextStyle(
            color: ColorPalette.white,
            fontSize: 16,
            fontFamily: "Pretendard",
            height: 1.5),
        children: [
          TextSpan(text: "${label}   "),
          TextSpan(text: content, style: TextStyle(fontWeight: FontWeight.w700))
        ]),
  ));
}

// Widget getSendWhoCard() {
//   String title = "GOGOGO";
//   sendWhoCard card = sendWhoCard();
//   card.title = title;
//   return card.card;
// }
