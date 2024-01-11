import 'package:flutter/material.dart';

var listView = ListView.builder(
  // shrinkWrap: true, // Important, trov put
  itemCount: 6,
  padding: EdgeInsets.all(0),
  itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('images/comment.png'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "6.3",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Iqbal Shafiq Rozaan",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  },
);

class child_text_date extends StatelessWidget {
  child_text_date({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${text}",
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class child_icon_date extends StatelessWidget {
  child_icon_date({
    super.key,
    required this.Icons,
  });

  final IconData Icons;

  @override
  Widget build(BuildContext context) {
    return Icon(
      // Icons.date_range_sharp,
      Icons,
      color: Colors.grey,
      size: 20,
    );
  }
}
