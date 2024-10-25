import 'package:flutter/material.dart';
import 'package:flutter_music_streaming/core/widget/Grid_continue.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Gridcontinue() ,);
  }
}