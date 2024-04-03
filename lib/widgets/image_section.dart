import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final String img;

  const ImageSection({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Image.asset(img, width: 600, height: 450, fit: BoxFit.cover);
  }
}
