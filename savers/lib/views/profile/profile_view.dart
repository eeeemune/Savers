import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/views/infoForm/info_form_view.dart';
import 'package:savers/views/profile/models/CallList.dart';
import 'package:savers/widgets/plus_button.dart';
import 'package:savers/widgets/title.dart';
import 'package:savers/widgets/top_navigator_bar.dart';
import 'package:savers/views/profile/models/Call.dart';
import 'package:savers/widgets/info_card.dart';
import 'package:savers/widgets/models/Member.dart';
import 'package:savers/widgets/models/MemberProvider.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key? key}) : super(key: key);
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late Member myInformation;
  MemberProvider memberProvider = MemberProvider();
  Widget callCards = _CallCardList();
  bool isLoading = true;

  Future _initData() async {
    myInformation = await memberProvider.getMember("khdkkhdddddddddd");
  }

  @override
  void initState() {
    super.initState();
    _initData().then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(
            color: ColorPalette.indigo,
          ))
        : ListView(children: [
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
              padding:
                  EdgeInsets.symmetric(horizontal: SizeParameters.page_padding),
            ),
            SizedBox(height: 24),
            myInformation.name != ""
                ? InfoCard(memberInfo: myInformation)
                : Padding(
                    child: SizedBox(
                        child: PlusButton(
                          callBackFunction: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InfoFormView())),
                          label: "의료정보 등록",
                        ),
                        height: 128),
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeParameters.page_padding)),
            SizedBox(height: 40),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeParameters.page_padding),
                child: title([
                  TextSpan(
                      text: "3명",
                      style: TextStyle(
                          color: ColorPalette.blue,
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: "에게 ",
                      style: TextStyle(fontWeight: FontWeight.w700)),
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

class _CallCardList extends StatelessWidget {
  List<Call> callNodes = CallList().get();

  @override
  Widget build(BuildContext context) {
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
          children: [
            ...callCards,
            PlusButton(
              callBackFunction: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoFormView())),
            )
          ],
        ));
  }
}
