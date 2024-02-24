import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/views/infoForm/info_form.dart';
import 'package:savers/widgets/title.dart';

class InfoFormView extends StatelessWidget {
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
        title: Text("의료 정보 등록",
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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Padding(
          child: title([
            TextSpan(
              text: "위급한 상황을 대비해\n",
            ),
            TextSpan(
                text: "의료 정보를 등록",
                style: TextStyle(fontWeight: FontWeight.w700)),
            TextSpan(
              text: "하세요",
            )
          ]),
          padding:
              EdgeInsets.symmetric(horizontal: SizeParameters.page_padding),
        ),
        SizedBox(height: 32),
        InfoForm()
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
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
            child: Text("저장하기",
                style: TextStyle(
                  color: ColorPalette.white,
                  fontFamily: "Pretendard",
                  fontSize: 20,
                )),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorPalette.indigo),
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
