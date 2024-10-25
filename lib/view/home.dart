import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_streaming/core/constants/constants.dart';
import 'package:flutter_music_streaming/core/until/Colorhex.dart';
import 'package:flutter_music_streaming/core/widget/Grid_continue.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          actions: [Icon(CupertinoIcons.chart_bar)],
          title: ListTile(
            leading: SizedBox(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpXpEDEa0R5t5_pyj8ewfLf8l4_OG_w_ef3Q&s"),
              ),
            ),
            title: Text(
              "Wellcome back",
              style: TextStyle(fontSize: Appfontsize().largeText),
            ),
            subtitle: Text("khoadonguyen"),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  primarycolor,
                  Colorhex("1E1E1E"),
                ])),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 24),
                child: Align(alignment: Alignment.centerLeft,
                  child: Text(
                    "Continue Listening",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Gridcontinue()
            ],
          ),
        ));
  }
}
