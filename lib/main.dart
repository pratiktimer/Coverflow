import 'package:flutter/material.dart';
import 'package:simple_coverflow/simple_coverflow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> images = [
    "https://images.pexels.com/photos/735647/pexels-photo-735647.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/1418354/pexels-photo-1418354.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/737552/pexels-photo-737552.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coverflow Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: CoverFlow(
            dismissibleItems: false,
            height: 450,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: FadeInImage(
                    image: NetworkImage(images[index]),
                    placeholder: AssetImage("images/bg.jpeg"),
                    fit: BoxFit.cover,
                  ));
            },
          ),
        ),
      ),
    );
  }
}
