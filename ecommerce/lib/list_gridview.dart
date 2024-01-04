import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // final deviceData = MediaQuery.of(context).size;
    final orientationData = MediaQuery.of(context).orientation;
    final List<String> images = [
      'assets/dreamstimefree_7901839.jpg',
      'assets/dreamstime_xxl_95739872.jpg',
      'assets/dreamstimefree_2271542.jpg',
      'assets/dreamstimefree_20672034.jpg',
      'assets/dreamstimefree_7926144.jpg',
      'assets/dreamstimefree_15757471.jpg',
      'assets/dreamstimefree_18120098.jpg',
      'assets/dreamstimefree_20672034.jpg',
      'assets/dreamstimefree_18120098.jpg',
      'assets/9545558.psd',
      'assets/9551235.psd',
      'assets/illustration-majestic-violin-with-bow-music-string-instrument-neon-colors_564714-1627.jpg'
    ];
    return GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8.0, crossAxisCount: 2, crossAxisSpacing: 8.0),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
            child: GridTile(
              child: Image.asset(images[index],
                  fit: orientationData == Orientation.portrait
                      ? BoxFit.cover
                      : BoxFit.fill),
            ),
          );
        });
  }
}
