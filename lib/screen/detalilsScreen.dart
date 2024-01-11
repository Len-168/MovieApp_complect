import 'package:cine_stream_ui/constant/colors.dart';
import 'package:cine_stream_ui/constant/image.dart';
import 'package:cine_stream_ui/constant/textStyle.dart';
import 'package:cine_stream_ui/repository/local_storage_data_watch_list.dart';
import 'package:cine_stream_ui/screen/pathScreen.dart/path_detail_screen.dart';
import 'package:cine_stream_ui/screen/rateScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({super.key, required this.data});

  final ImageDetail data;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final localManager = LocalStorageManager.instance;

  List<ImageDetail> _imageDetails = [];

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  void _saveOrRemoveUser() async {
    if (_isContain()) {
      final index = _imageDetails
          .indexWhere((element) => element.title == widget.data.title);
      _imageDetails.removeAt(index);
      await localManager.putImageDetails(_imageDetails);
      _showMessage(message: "Remove Successfully....", icon: Icons.delete);
      _getUser();
      return;
    }

    final isSave = await localManager.putImageDetail(widget.data);
    if (isSave) {
      _showMessage(message: "Save Successfully....", icon: Icons.check);
      _getUser();
    }
  }

  void _showMessage({required String message, required IconData icon}) {
    final snackBar = SnackBar(
      content: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              icon,
              color: Colors.white,
            ),
          ],
        ),
      ),
      elevation: 0,
      duration: Duration(seconds: 2),
      backgroundColor: Colors.green.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      margin: EdgeInsets.all(20),
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _getUser() async {
    final imageDetails = await localManager.getImageDetails();
    setState(() {
      _imageDetails = imageDetails;
    });
  }

  bool _isContain() =>
      _imageDetails
          .indexWhere((element) => element.title == widget.data.title) !=
      -1;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Scaffold(
      backgroundColor: BackAppColors,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 15],
              colors: <Color>[
                Colors.black,
                Colors.transparent,
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: _saveOrRemoveUser,
              // icon: Icon(Icons.bookmark_border_outlined),
              icon: _isContain()
                  ? Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                    ),
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip
                  .none, // This is use for the hovering of the small movie box.
              children: [
                Container(
                  height: 275,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.data.coverImg),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            RatingScreen.buildShowModalBottomSheet(context);
                          },
                          child: Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              color: BackAppColors.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star_border_rounded,
                                    color: Colors.amber,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "9.5",
                                    style: googleFontsPoppinsGold,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 110,
                            height: 145,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(widget.data.profileImg),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Container(
                            // color: Colors.red,
                            width: 230,
                            height: 70,
                            child: Text(
                              widget.data.title,
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 105,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                child_icon_date(Icons: Icons.date_range_sharp),
                SizedBox(width: 5),
                child_text_date(text: "2023  |"),
                SizedBox(width: 20),
                child_icon_date(Icons: Icons.timelapse_rounded),
                SizedBox(width: 5),
                child_text_date(text: "148 Minutes  |"),
                SizedBox(width: 20),
                child_icon_date(Icons: Icons.confirmation_num_outlined),
                SizedBox(width: 5),
                child_text_date(text: "Action")
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 45,
              padding: EdgeInsets.only(left: 10),
              child: const TabBar(
                tabAlignment: TabAlignment.center,
                isScrollable: true,
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 15,
                indicatorColor: IconSerachColor,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 5, color: IconSerachColor),
                  insets: EdgeInsets.symmetric(horizontal: 14.0),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
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
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Text(
                    widget.data.detail,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  child: listView,
                ),
                Container(
                  child: GridView.builder(
                    padding: EdgeInsets.all(0),
                    // physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('images/review.png'),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Baiden",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
