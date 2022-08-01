import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    this.size,
    required this.imagePath,
  }) : super(key: key);

  final double? size;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 20,
      height: size ?? 20,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              image: AssetImage(imagePath)),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: const Offset(0, 5),
              blurRadius: 10,
            ),
          ]),
    );
  }
}
