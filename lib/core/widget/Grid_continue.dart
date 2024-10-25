
import 'package:flutter/material.dart';
import 'package:flutter_music_streaming/core/until/SIze.dart';
import 'package:flutter_music_streaming/core/widget/minisongcard.dart';

class Gridcontinue extends StatelessWidget {
  const Gridcontinue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
 
      height: 230, // Đặt chiều cao cụ thể
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 12,
          crossAxisSpacing: 18,
          childAspectRatio: 18/5,
          crossAxisCount: 2,                
        ),
        itemBuilder: (context, index) {
          return Minicardsong();
        },
      ),
    );
  }
}
