import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music_streaming/core/until/Colorhex.dart';
import 'package:flutter_music_streaming/core/constants/constants.dart';
import 'package:flutter_music_streaming/core/widget/AppDefalutTabcontroller.dart';
import 'package:flutter_music_streaming/view/home.dart';
import 'package:flutter_music_streaming/view/libarary.dart';
import 'package:flutter_music_streaming/view/search.dart';
import 'package:flutter_music_streaming/view/wellcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((value) => runApp(_MyApp()));
}

class _MyApp extends StatelessWidget {
  const _MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        theme: normalTheme,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            
          backgroundColor: Colorhex("1E1E1E"),
          body: Welcome(),
          
          // TabBarView(children: [Home(),Search(),Library()]),
          // bottomNavigationBar: Apptabbar(),
        ),
      ),
    );
  }
}

