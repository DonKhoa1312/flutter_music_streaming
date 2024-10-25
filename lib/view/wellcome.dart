import 'package:flutter/material.dart';
import 'package:flutter_music_streaming/core/constants/constants.dart';
import 'package:flutter_music_streaming/core/until/Colorhex.dart';
import 'package:flutter_music_streaming/core/until/SIze.dart';
import 'package:flutter_music_streaming/data/model/Modelwelcome.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: gheight(1, context),
              width: gwidth(1, context),
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: gheight(1, context),
                    width: gwidth(1, context),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            image: AssetImage(_list[index].img))),
                  );
                },
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: gwidth(1, context),
              height: gheight(0.4, context),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  border: Border.all(color: primarycolor, width: 2),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                      ),
                      "Enjoy your favorite tracks anytime, anywhere! Discover millions of songs, curated playlists")
                ],
              ),
            ),
          ),
          Positioned.fill(
              bottom: gheight(-0.7, context),
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Stack(
                      children: [
                        Positioned(
                            child: Row(
                                children: List.generate(
                          2,
                          (i) => Container(
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(12)),
                            margin: EdgeInsets.only(right: 2),
                            height: 8,
                            width: 58,
                          ),
                        )))
                      ],
                    ),
                    height: 8,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colorhex("DBE7E8"),
                        borderRadius: BorderRadius.circular(12)),
                  )))
        ],
      ),
    );
  }
}

final List<Modelwelcome> _list = [
  Modelwelcome(
      discribe:
          "Enjoy your favorite tracks anytime, anywhere! Discover millions of songs, curated playlists, and personalized recommendations.",
      img: "assets/img/2144787.jpg")
];
