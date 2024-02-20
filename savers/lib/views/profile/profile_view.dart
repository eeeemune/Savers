import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/views/profile/models/CallList.dart';
import 'package:savers/widgets/title.dart';
import 'package:savers/widgets/top_navigator_bar.dart';
import 'package:savers/views/profile/models/Call.dart';
import 'package:savers/widgets/info_card.dart';

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
      InfoCard(),
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
      SizedBox(height: SizeParameters.bottomNavigatorHeight)
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
