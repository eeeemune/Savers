import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:savers/mainn.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/views/SOS/SOS_view.dart';
import 'package:savers/views/home/home_view.dart';
import 'package:savers/views/map/map_view.dart';
import 'package:savers/views/profile/profile_view.dart';
import 'package:savers/widgets/bottom_nav_element.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: ColorPalette.backGray,
            systemNavigationBarColor: ColorPalette.backGray,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
        child: MaterialApp(
          home: GogoNavigate(),
          theme: ThemeData(
              backgroundColor: ColorPalette.backGray,
              scaffoldBackgroundColor: ColorPalette.backGray,
              fontFamily: "Pretendard"),
        ));
  }
}

class GogoNavigate extends StatefulWidget {
  const GogoNavigate({Key? key}) : super(key: key);
  State<GogoNavigate> createState() => _GogoNavigateState();
}

class _GogoNavigateState extends State<GogoNavigate> {
  int nowPageIndex = 0;
  void changePage(int targetPageIndex) {
    setState(() {
      nowPageIndex = targetPageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _Body(
        nowPage: nowPageIndex,
        changePageCallback: changePage,
      ),
      bottomNavigationBar: _PageController(
        nowPage: nowPageIndex,
        changePageCallback: changePage,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  late int nowPage;
  final Function(int) changePageCallback;
  _Body({required this.nowPage, required this.changePageCallback});

  @override
  Widget build(BuildContext context) {
    return ([
      HomeView(
        changePage: changePageCallback,
      ),
      MapView(),
      ProfileView(),
      SOSView()
    ][nowPage]);
  }
}

class _PageController extends StatelessWidget {
  late int nowPage;
  final Function(int) changePageCallback;
  _PageController({required this.nowPage, required this.changePageCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
        height: SizeParameters.bottomNavigatorHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, -0.5),
            colors: [Color(0x00F2F4F6), Color(0xFFF2F4F6)],
          ),
        ),
        child: Container(
            padding: EdgeInsets.all(8),
            child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      child: BottomNavElement(
                        isSelected: nowPage == 0,
                        color: ColorPalette.red,
                        icon: Icons.local_hospital,
                        label: "Hospital",
                      ),
                      onTap: () => {changePageCallback(0)},
                    ),
                    SizedBox(width: 16.0),
                    InkWell(
                      child: BottomNavElement(
                        isSelected: nowPage == 1,
                        color: ColorPalette.indigo,
                        icon: Icons.room,
                        label: "Map",
                      ),
                      onTap: () => {changePageCallback(1)},
                    ),
                    SizedBox(width: 16.0),
                    InkWell(
                      child: BottomNavElement(
                        isSelected: nowPage == 2,
                        color: ColorPalette.blue,
                        icon: Icons.person,
                        label: "Profile",
                      ),
                      onTap: () => {changePageCallback(2)},
                    )
                  ]),
            )));
  }
}
