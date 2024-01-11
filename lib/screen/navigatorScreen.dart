// import 'package:cine_stream_ui/constant/colors.dart';
// import 'package:cine_stream_ui/screen/homeScreen.dart';
// import 'package:cine_stream_ui/screen/search_screen.dart';
// import 'package:cine_stream_ui/screen/watchList.dart';
// import 'package:flutter/material.dart';
//
// class NavigatorScreen extends StatefulWidget {
//   const NavigatorScreen({super.key});
//
//   @override
//   State<NavigatorScreen> createState() => _NavigatorScreenState();
// }
//
// class _NavigatorScreenState extends State<NavigatorScreen> {
//   late List<Widget> _pageList;
//
//   PageController _pageController = PageController();
//
//   HomeScreen _homeScreen = HomeScreen();
//   SearchScreen _searchScreen = SearchScreen();
//   WatchListScreen _watchListScreen = WatchListScreen();
//
//   @override
//   void initState() {
//     super.initState();
//     _pageList = [_homeScreen, _searchScreen, _watchListScreen];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildBody,
//       bottomNavigationBar: _buildBottomNavigationBar,
//     );
//   }
//
//   PageController _pageController = PageController();
//
//   get _buildBody {
//     return Container(
//       child: PageView(
//         controller: _pageController,
//         children: _pageList,
//         onPageChanged: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
//
//   int _currentIndex = 0;
//
//   get _buildBottomNavigationBar {
//     return Container(
//       height: 78,
//       decoration: BoxDecoration(
//         border: Border(
//           top: BorderSide(color: Colors.blue, width: 2),
//         ),
//       ),
//       child: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         backgroundColor: BackAppColors,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         selectedFontSize: 14,
//         unselectedFontSize: 14,
//         onTap: (index) {
//           setState(() {
//             // _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeOut);
//             _pageController.jumpToPage(index);
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_filled),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: "Search",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.bookmark_outline),
//             label: "Watch list",
//           ),
//         ],
//       ),
//     );
//   }
// }
