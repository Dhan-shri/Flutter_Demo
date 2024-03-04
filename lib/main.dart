import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = "Dhanshri";
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Material app

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.amberAccent,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  // ignore: use_super_parameters
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dhanshri"),
        // action button
        actions : <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {
              debugPrint("Search button is clicked");
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            //show after hovering or long press
            tooltip: "More Icon",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  content: Text('More button is clicked'),
                ),
              );
            },
          ),
        ],

        // view for the appbar
        backgroundColor: Colors.green,
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        elevation: 0.01,

      ),
      body:  Center(
        child: RichText(
          overflow: TextOverflow.ellipsis,

          textAlign: TextAlign.end,

          // Control text direction
          textDirection: TextDirection.rtl,

          softWrap: true,
          maxLines: 1,
          
          text : TextSpan( 
            text : "Hello",
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(text: "Dhanshri", style: TextStyle(fontWeight: FontWeight.bold)),
            ]

          ),
          ),
      ),

      drawer: Drawer(
        child:  ListView(
          padding: const EdgeInsets.all(0) ,
          children: const [
             DrawerHeader(
              decoration:  BoxDecoration(
                color: Colors.green,
              ),
              child : UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text("Dhanshri Sonwane", style: TextStyle(fontSize : 18)),
                accountEmail: Text("Dhanshri9545@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text("D", style: TextStyle(fontSize: 40.0)),
                ),
              ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
          ],
          )
      ),
    );
  }
}


class MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 100, 100);
  }
 
  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}