import 'package:cine_stream_ui/constant/colors.dart';
import 'package:cine_stream_ui/screen/homeScreen.dart';
import 'package:cine_stream_ui/screen/search_screen.dart';
import 'package:cine_stream_ui/screen/watchList.dart';
import 'package:flutter/material.dart';

class MultiPage extends StatefulWidget {
  const MultiPage({super.key});

  @override
  State<MultiPage> createState() => _MultiPageState();
}

class _MultiPageState extends State<MultiPage> {
  // late List<Widget> _pageList;
  List<Widget> _pageList = [];

  PageController _pageController = PageController();

  // HomeScreen _homeScreen = HomeScreen();
  SearchScreen _searchScreen = SearchScreen();
  // WatchListScreen _watchListScreen = WatchListScreen();

  @override
  void initState() {
    super.initState();
    _pageList = [HomeScreen(tabController: _pageController,), _searchScreen, WatchListScreen(tabController: _pageController)];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
      bottomNavigationBar: _buildBottomNavigationBar,
    );
  }

  get _buildBody {
    return Container(
      child: PageView(
        controller: _pageController,
        // physics: NeverScrollableScrollPhysics(),
        children: _pageList,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  int _currentIndex = 0;
  int _preIndex = -1;

  get _buildBottomNavigationBar {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.blue, width: 1),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: BackAppColors,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color(0xFF67686D),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) {
          setState(() {
            _preIndex = _currentIndex;
            _currentIndex = index;

            print("_preIndex = $_preIndex");
            print("_currentIndex = $_currentIndex");

            if(_preIndex == _currentIndex){
              switch(_currentIndex){
                case 0:
                  homeScreenKey.currentState!.gotoTop();
                  break;
                case 2:
                  watchListScreenKey.currentState!.gotoTop();
                  break;

              }
            }

            // _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeOut);
            _pageController.jumpToPage(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            // icon: IconButton(
            //   onPressed: (){
            //     watchListScreenKey.currentState!.gotoTop();
            //   },
            //   icon: Icon(Icons.bookmark_outline),
            // ),
            icon: Icon(Icons.bookmark_outline),
            label: "Watch list",
          ),
        ],
      ),
    );
  }
}
