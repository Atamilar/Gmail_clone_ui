import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: const Color(0xffB23121),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xffD44638),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xffD44638))),
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      appBar: AppBar(
        title: const Text("Primary"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
              width: double.infinity,
              height: 160.0,
              decoration: BoxDecoration(color: Color(0xffD44638)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: ExactAssetImage('images/user4.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    child: Text(
                      "Tamilarasan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    child: Text(
                      "athamil@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            drawer_Lt(
              Icons.all_inbox,
              "All inbox",
              "",
              Color(0xfffafafa),
            ),
            Divider(
              height: 0.1,
            ),
            drawer_Lt(Icons.stay_primary_landscape_outlined, "Primary", "99+",
                Color(0xfffafafa)),
            drawer_Lt(Icons.people, "Social", "2 new", Colors.blue),
            drawer_Lt(Icons.more, "Promotions", "", Color(0xfffafafa)),
            Divider(
              height: 0.1,
            ),
            drawer_Lt(Icons.star, "Starred", "2", Color(0xfffafafa)),
            drawer_Lt(Icons.alarm, "Snoozed", "", Color(0xfffafafa)),
            drawer_Lt(Icons.play_arrow, "Important", "99", Color(0xfffafafa)),
            drawer_Lt(Icons.mail_outline, "Sent", "9", Color(0xfffafafa)),
            drawer_Lt(Icons.bookmark, "Outbox", "", Color(0xfffafafa)),
            drawer_Lt(
                Icons.insert_drive_file, "drive files", "", Color(0xfffafafa))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            top_tail("Social", "Google+", Icons.people, Colors.lightBlue,
                Colors.lightBlue),
            Divider(
              height: 0.2,
            ),
            top_tail("Promotions", "Swiggy,Google Offers", Icons.more,
                Colors.orange, Colors.orange),
            Divider(
              height: 0.2,
            ),
            top_tail("Updates", "Google play", Icons.info, Colors.green,
                Colors.green),
            Divider(
              height: 0.2,
            ),
            msgtile("images/user1.png", "Raja",
                "Your hall ticket released today", "9:10", false),
            msgtile("images/user2.png", "Tnexam", "Result released now",
                "12:30", true),
            msgtile("images/user3.png", "Rithick Antony", "msg form tagore",
                "8:34", true),
            msgtile("images/user10.png", "ELSA Speak", "Confirm your Email",
                "12:23", false),
            msgtile("images/user9.png", "Google Play",
                "Changes to Purchase verficaton ", "1:40", true),
            msgtile("images/user12.png", "You Tube",
                "Annual Remainder about you tube", "3:23", true),
            msgtile("images/user7.png", "vivo account team", "vivo account",
                "3:30", true),
            msgtile("images/user8.png", "vivo account team", "vivo account",
                "3:30", true),
          ],
        ),
      ),
    );
  }

  ListTile drawer_Lt(IconData idata, String title, String tr, Color trcolor) {
    return ListTile(
      leading: Icon(idata),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      trailing: Container(
        color: trcolor,
        child: Text(
          tr,
          style: TextStyle(
              color:
                  trcolor == Color(0xfffafafa) ? Colors.black : Colors.white),
        ),
      ),
    );
  }

  ListTile msgtile(
      String url, String title, String subtitle, String time, bool unreadmsg) {
    return ListTile(
      leading: CircleAvatar(
        foregroundImage: AssetImage(url),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
          ),
          Text(time)
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            subtitle,
            style: TextStyle(color: unreadmsg ? Colors.grey : Colors.black),
          ),
          Icon(Icons.star_border)
        ],
      ),
    );
  }

  ListTile top_tail(String Title, String sub_title, IconData idata,
      Color icolor, Color trcolor) {
    return new ListTile(
      leading: IconButton(
        style: IconButton.styleFrom(foregroundColor: icolor),
        onPressed: () {},
        icon: Icon(idata),
      ),
      title: Text(
        Title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(sub_title),
      trailing: Container(
        color: trcolor,
        child: Text(
          "new 1",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
