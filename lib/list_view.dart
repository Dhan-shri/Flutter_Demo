import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {

  const MyApp ({super.key});
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text('ListView'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 550.0,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage( 
                    image: AssetImage(
                        'assets/images/evening.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/tree.jpg'),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 240.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/tree.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/evening.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/city.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
               Container(
                 padding: const EdgeInsets.all(10.0),
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/tree.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
               Container(
                 padding: const EdgeInsets.all(10.0),
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/tree.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
               Container(
                padding: const EdgeInsets.all(10.0),
                height: 480.0,
                width: 240.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/tree.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
            ],
 
          ),
        ),
      ),
    );
  }
}