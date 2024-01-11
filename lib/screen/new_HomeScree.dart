import 'package:cine_stream_ui/constant/colors.dart';
import 'package:cine_stream_ui/constant/image.dart';
import 'package:cine_stream_ui/reusable_widget/tab_home/nowplaying.dart';
import 'package:flutter/material.dart';

class HomeSCrennNew extends StatefulWidget {
  const HomeSCrennNew({super.key});

  @override
  State<HomeSCrennNew> createState() => _HomeSCrennNewState();
}

class _HomeSCrennNewState extends State<HomeSCrennNew>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New"),
      ),
      body: DefaultTabController(
        length: 4,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 235,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lstPlayNow.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16, right: 10),
                        child: Container(
                          width: 165,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(lstPlayNow[index]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 45,
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: TabBar(
                    isScrollable: true,
                    controller: _controller,
                    indicatorColor: IconSerachColor,
                    indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 5.0, color: IconSerachColor),
                      insets: EdgeInsets.symmetric(horizontal: 14.0),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    tabs: dataHOme.map((e) => Text(e.labbel)).toList(),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: NowPlaying(type: dataHOme[_selectedIndex].labbel),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
