import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({Key? key, this.padding, this.onTap, required this.tag})
      : super(key: key);

  final String tag;
  final EdgeInsets? padding;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(3),
              clipBehavior: Clip.antiAlias,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/vinne.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFF24253D).withOpacity(0.46),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(3),
                      topRight: Radius.circular(3)),
                ),
                child: Text(
                  tag,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
