import 'package:cine_stream_ui/constant/colors.dart';
import 'package:flutter/material.dart';

class TabDetail extends StatelessWidget {
  const TabDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            height: 45,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TabBar(
              tabAlignment: TabAlignment.center,
              isScrollable: true,
              labelStyle: TextStyle(
                color: Colors.amber,
              ),
              dividerColor: Colors.transparent,
              indicatorColor: IconSerachColor,
              indicator: null,
              tabs: [
                Tab(
                  child: Text(
                    "About Movie",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Tab(
                  child: Text("Reviews", style: TextStyle(fontSize: 17)),
                ),
                Tab(
                  child: Text("Casts", style: TextStyle(fontSize: 17)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabMovieInfo extends StatelessWidget {
  const TabMovieInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences."),
    );
  }
}
