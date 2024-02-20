// import 'package:flutter/material.dart';
// import 'package:savers/theme/theme.dart';
// import 'package:savers/views/home/home_view.dart';
// import 'package:savers/views/map/map_view.dart';
// import 'package:savers/views/profile/profile_view.dart';
// import 'package:savers/widgets/bottom_nav_element.dart';

// void main() => runApp(const App());

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const ScaffoldApp(),
//       theme: ThemeData(
//         backgroundColor: ColorPalette.backGray,
//         fontFamily: "Pretendard",
//       ),
//     );
//   }
// }

// class ScaffoldApp extends StatefulWidget {
//   const ScaffoldApp({super.key});

//   @override
//   State<ScaffoldApp> createState() => _ScaffoldAppState();
// }

// class _ScaffoldAppState extends State<ScaffoldApp> {
//   int currentPageIndex = 0;
//   void changePage(int index) {
//     setState(() {
//       currentPageIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorPalette.backGray,
//       body: <Widget>[
//         HomeView(),
//         MapView(),
//         ProfileView(),
//       ][currentPageIndex],
//       bottomNavigationBar: ModularBottomNav(
//         currentIndex: currentPageIndex,
//         onPageChanged: (index) => changePage(index),
//       ),
//     );
//   }
// }

// typedef PageChangeCallback = void Function(int index);

// class ModularBottomNav extends StatelessWidget {
//   final int currentIndex;
//   final PageChangeCallback onPageChanged;

//   const ModularBottomNav({
//     Key? key,
//     required this.currentIndex,
//     required this.onPageChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.fromLTRB(16, 4, 16, 16),
//         color: Colors.transparent,
//         child: Container(
//             padding: EdgeInsets.all(8),
//             child: Container(
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     InkWell(
//                       child: BottomNavElement(
//                         isSelected: currentIndex == 0,
//                         color: ColorPalette.red,
//                         icon: Icons.local_hospital,
//                         label: "Hospital",
//                       ),
//                       onTap: () => {onPageChanged(0)},
//                     ),
//                     SizedBox(width: 16.0),
//                     InkWell(
//                       child: BottomNavElement(
//                         isSelected: currentIndex == 1,
//                         color: ColorPalette.indigo,
//                         icon: Icons.room,
//                         label: "Map",
//                       ),
//                       onTap: () => {onPageChanged(1)},
//                     ),
//                     SizedBox(width: 16.0),
//                     InkWell(
//                       child: BottomNavElement(
//                         isSelected: currentIndex == 2,
//                         color: ColorPalette.blue,
//                         icon: Icons.person,
//                         label: "Profile",
//                       ),
//                       onTap: () => {onPageChanged(2)},
//                     ),
//                   ]),
//             )));
//   }
// }
