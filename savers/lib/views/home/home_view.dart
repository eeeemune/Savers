import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/widgets/top_navigator_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: ColorPalette.backGray,
    //   padding: EdgeInsets.symmetric(horizontal: 16.0),
    //   child: TopNavigatorBar(),
    // );
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          color: ColorPalette.red,
          child: TopNavigatorBar(),
        )
      ],
    );
  }
}
