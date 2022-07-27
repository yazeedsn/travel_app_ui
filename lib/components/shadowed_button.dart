import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class ShadowedButton extends StatelessWidget {
  const ShadowedButton({
    Key? key,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 35, right: 35),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(27)),
              boxShadow: [
                BoxShadow(
                  color: secondaryColor,
                  blurRadius: 18,
                  blurStyle: BlurStyle.normal,
                ),
              ]),
          child: const SizedBox(height: 35, width: 1),
        ),
        OutlinedButton(onPressed: onPressed, child: child),
      ],
    );
  }
}
