import 'package:flutter/material.dart';

class BackNavigationBar extends StatelessWidget {
  const BackNavigationBar({
    Key? key,
    this.padding,
    this.color,
    this.title,
  }) : super(key: key);

  final EdgeInsets? padding;
  final Color? color;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: padding ?? const EdgeInsets.only(top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_sharp,
                color: color ?? Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: title ?? Container()),
          ],
        ),
      ),
    );
  }
}
