import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    child:
                        Icon(Icons.create, color: ColorPalette.white, size: 24),
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
        ));
  }
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
