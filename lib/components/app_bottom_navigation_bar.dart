import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar(
      {Key? key, required this.currentIndex, this.onTap})
      : super(key: key);

  final int currentIndex;
  final void Function(int)? onTap;

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    currentIndex = widget.currentIndex;
    return Stack(
      children: [
        BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            widget.onTap!(index);
          },
          items: [
            const BottomNavigationBarItem(
              icon: SizedBox(
                width: 18,
                height: 26,
                child: ImageIcon(AssetImage('assets/images/travel_bag.png')),
              ),
              label: 'Travel',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/plane.png'),
              ),
              label: 'Flights',
            ),
            BottomNavigationBarItem(
              icon: Container(),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/hotels.png')),
              label: 'Hotels',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        IgnorePointer(
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: secondaryColor.withOpacity(0.4),
                    offset: const Offset(0, -10),
                    blurRadius: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
