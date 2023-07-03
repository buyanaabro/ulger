import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001f34),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          AppBar(
            title: Text("Ulger.mn"),
          )
        ],
        body: Align(
          alignment: Alignment.center,
          child: ListView(
            padding: EdgeInsets.all(22),
            children: [
              for (int i = 0; i < 25; i++) Text("hello world $i"),
            ],
          ),
        ),
      ),
    );
  }
}
