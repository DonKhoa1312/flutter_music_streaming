import 'package:flutter/material.dart';
import 'package:flutter_music_streaming/core/constants/constants.dart';
import 'package:flutter_music_streaming/core/until/Colorhex.dart';
import 'package:flutter_music_streaming/core/until/SIze.dart';

class Apptabbar extends StatelessWidget {
  const Apptabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207,
      width: gwidth(1, context),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            const Color.fromARGB(118, 7, 1, 1),
            const Color.fromARGB(4, 134, 129, 129)
          ])),
      child: Column(
        children: [
          Spacer(),
          Container(
            height: 80,
            child: TabBar(
              
              indicatorColor: Colors.transparent,
              labelColor: primarycolor,
              tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "home",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "search",
              ),
              Tab(
                icon: Icon(Icons.folder),
                text: "library",
              )
            ]),
          ),
        ],
      ),
    );
  }
}
