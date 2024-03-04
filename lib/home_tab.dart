import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}


class TabBarDemo extends StatelessWidget{
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dhanshri",
      debugShowCheckedModeBanner: false,
      home: tabBarDemo(),
    );
  }

  DefaultTabController tabBarDemo() {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Demo'),
          backgroundColor: Colors.amberAccent,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.music_note)),
              Tab(icon: Icon(Icons.music_video)),
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(icon: Icon(Icons.grade)),
              Tab(icon: Icon(Icons.email)),
            ],
          ),
         
        ),
        body: const TabBarView(
          children: <Widget>[
            Icon(Icons.music_note),
            Icon(Icons.music_video),
            Icon(Icons.camera_alt),
            Icon(Icons.grade),
            Icon(Icons.email),
          ],
        ),
      ),
    );
  }
}