import 'dart:async';

import 'package:cine_stream_ui/constant/colors.dart';
import 'package:cine_stream_ui/constant/image.dart';
import 'package:cine_stream_ui/reusable_widget/BoxSerach.dart';
import 'package:cine_stream_ui/reusable_widget/appBar/app_bar_widget.dart';
import 'package:cine_stream_ui/reusable_widget/none_watch_list/none_list_screen_widget.dart';
import 'package:cine_stream_ui/screen/detalilsScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// List<ImageDetail> movieList = [];

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<ImageDetail> _searchList = [];

  final List<ImageDetail> movieList = [];
  Timer? _debounce;

  _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (query.isEmpty || query == " ") {
        setState(() {
          _searchList = [];
        });
      } else {
        setState(() {
          // _searchList = this.movieList.where((movie) => movie.title.contains(query)).toList();
          _searchList = movieList
              .where((movie) =>
                  movie.title.toLowerCase().contains(query.toLowerCase()))
              .toList();
        });
      }
    });
  }

  @override
  void initState() {
    dataHOme.forEach((data) => movieList.addAll(data.images));
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackAppColors,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBarWidget(
          title: "Search",
          // leading: Icons.arrow_back_ios,
          colorAllFore: Colors.white,
          // actionIcon: Icons.info_outline,
        ),
      ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: BoxSerachReusable(onChanged: _onSearchChanged),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     right: 30,
            //     left: 30,
            //     top: 20,
            //   ),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width,
            //     height: 50,
            //     decoration: BoxDecoration(
            //       color: Color(0xFF45515B),
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.only(left: 20),
            //       child: TextField(
            //         onChanged: _onSearchChanged,
            //         style: GoogleFonts.poppins(
            //           color: Colors.white,
            //         ),
            //         decoration: InputDecoration(
            //           border: InputBorder.none,
            //           hintText: "Search",
            //           hintStyle: GoogleFonts.poppins(
            //             color: Colors.grey,
            //           ),
            //           suffixIcon: const Icon(
            //             Icons.search,
            //             color: Colors.grey,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: _searchList.length == 0 ? buildNone() : buildItem(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildNone() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      child: NoneListScreenWidget(
        image: "images/search_icon.png",
        title: "We Are Sorry, We Can Not Find the Movie :(",
        subTitle: "Find your movie by Type title, categories, years, etc",
      ),
    );
  }

  buildItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: ListView.builder(
        // itemCount: lstPlayNow.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _searchList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(data: _searchList[index]),
                    ));
              },
              child: SizedBox(
                height: 130,
                child: Row(
                  children: [
                    Container(
                      width: 95,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage(_searchList[index].profileImg),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${_searchList[index].title}",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_border,
                                    color: Color(0xFFFF8700),
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "9.5",
                                    style: GoogleFonts.montserrat(
                                      color: const Color(0xFFFF8700),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.local_attraction_outlined,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Action",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_today_outlined,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2023",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.access_time,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "125" " minutes",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
