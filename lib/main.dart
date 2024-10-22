import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then(
    (value) => runApp(_Flutter_Music_Streaming()),
  );
}

class _Flutter_Music_Streaming extends StatefulWidget {
  const _Flutter_Music_Streaming({super.key});

  @override
  State<_Flutter_Music_Streaming> createState() =>
      __Flutter_Music_StreamingState();
}

class __Flutter_Music_StreamingState extends State<_Flutter_Music_Streaming> {
  @override
  Widget build(BuildContext context) {
    final isdarkTheme = Theme.of(context).brightness == Brightness.dark;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            isdarkTheme ? Brightness.light : Brightness.dark,
        statusBarBrightness: !kIsWeb && Platform.isAndroid
            ? Brightness.light
            : Brightness.dark));
    return MaterialApp(
      
      title: "music streaming",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: Text("Hello world"),
        ),
      ),
    );
  }
}

