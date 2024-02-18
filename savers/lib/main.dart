import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';
import 'package:savers/views/home/home_view.dart';
import 'package:savers/views/map/map_view.dart';
import 'package:savers/views/profile/profile_view.dart';
import 'package:savers/widgets/bottom_nav_element.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomNav(),
      theme: ThemeData(
        backgroundColor: ColorPalette.backGray,
        fontFamily: "Pretendard",
      ),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentPageIndex = 0;
  void changePage(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.backGray,
        body: <Widget>[
          HomeView(),
          MapView(),
          ProfileView(),
        ][currentPageIndex],
        bottomNavigationBar: Container(
            padding: EdgeInsets.fromLTRB(16, 4, 16, 16),
            color: Colors.transparent,
            child: Container(
                padding: EdgeInsets.all(8),
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          child: BottomNavElement(
                            isSelected: currentPageIndex == 0,
                            color: ColorPalette.red,
                            icon: Icons.local_hospital,
                            label: "Hospital",
                          ),
                          onTap: () => {changePage(0)},
                        ),
                        SizedBox(width: 16.0),
                        InkWell(
                          child: BottomNavElement(
                            isSelected: currentPageIndex == 1,
                            color: ColorPalette.indigo,
                            icon: Icons.room,
                            label: "Map",
                          ),
                          onTap: () => {changePage(1)},
                        ),
                        SizedBox(width: 16.0),
                        InkWell(
                          child: BottomNavElement(
                            isSelected: currentPageIndex == 2,
                            color: ColorPalette.blue,
                            icon: Icons.person,
                            label: "Profile",
                          ),
                          onTap: () => {changePage(2)},
                        ),
                      ]),
                ))));
  }
}
