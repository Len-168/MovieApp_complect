import 'package:cine_stream_ui/constant/colors.dart';
import 'package:cine_stream_ui/constant/image.dart';
import 'package:cine_stream_ui/reusable_widget/tab_home/nowplaying.dart';
import 'package:cine_stream_ui/screen/detalilsScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var homeScreenKey = GlobalKey<_HomeScreenState>();

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  Key key = homeScreenKey;

  HomeScreen({super.key, required this.tabController});

  final PageController tabController;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  ScrollController scrollController = ScrollController();

  gotoTop() {
    scrollController.animateTo(
      0,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: dataHOme.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final List<ImageDetail> allImages = [];
    dataHOme.forEach((data) => allImages.addAll(data.images));

    return Scaffold(
      backgroundColor: BackAppColors,
      appBar: AppBar(
        title: Text(
          "What do you want to watch?",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: BackAppColors,
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 4,
        child: ListView(
          controller: scrollController,
          children: [
            // SizedBox(height: 10),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  // child: BoxSerachReusable(),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {
                        widget.tabController.jumpToPage(1);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: BoxSerachColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Search",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Icon(
                                Icons.search,
                                size: 30,
                                color: IconSerachColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ), // Box Serach
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 240,
                  child: ListView.builder(
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: allImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailScreen(data: allImages[index]),
                                ));
                          },
                          child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(allImages[index].profileImg),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    controller: _controller,
                    indicatorColor: IconSerachColor,
                    dividerColor: Colors.transparent,
                    indicatorWeight: 15,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 5, color: IconSerachColor),
                      insets: EdgeInsets.symmetric(horizontal: 14.0),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    tabs: dataHOme
                        .map(
                          (e) => Text(
                            e.labbel,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: NowPlaying(type: dataHOme[_selectedIndex].labbel),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
