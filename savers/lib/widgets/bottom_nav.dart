// import 'package:flutter/material.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   int currentPageIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: NavigationBar(
//         onDestinationSelected: (int index) {
//           setState(() {
//             currentPageIndex = index;
//           });
//         },
//         destinations: [
//           NavigationDestination(
//             selectedIcon: Icon(Icons.home),
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.notifications_sharp),
//             label: 'Notifications',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.notifications_sharp),
//             label: 'gogo',
//           ),
//         ],
//       ),
//       body: <Widget>[
//         /// Home page
//         Card(child: Text('Homepage')),

//         /// Notifications page
//         Card(child: Text('page2')),

//         /// Messages page
//         Card(child: Text('page3')),
//       ][currentPageIndex],
//     );
//   }
// }
