import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard(
      {Key? key,
      this.padding,
      this.onTap,
      required this.tag,
      required this.image})
      : super(key: key);

  final String tag;
  final EdgeInsets? padding;
  final void Function()? onTap;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.19 * 0.82,
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
                child: image,
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
