import 'package:flutter/material.dart';
import 'package:travel_app/components/back_navigation_bar.dart';
import 'package:travel_app/components/profile_image.dart';
import 'package:travel_app/consts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool hidden = true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BackNavigationBar(
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Profile', style: headerStyle),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xFF8C8C8C),
                  ),
                ),
              ],
            ),
            color: textColor),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const ProfileImage(
                  size: 95, imagePath: 'assets/images/profile.jpg'),
              const SizedBox(height: 14),
              Text(
                'John Smith',
                style: headerStyle.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'John Smith',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    enabled: false),
                const SizedBox(height: 22),
                TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'someone@gmail.com',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    enabled: false),
                const SizedBox(height: 22),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text(
                          '*********',
                          style: TextStyle(
                            color: textColor,
                            fontSize: 18,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Transform.scale(
                            scale: 0.6,
                            child: IconButton(
                              icon: const ImageIcon(
                                AssetImage('assets/images/eye.png'),
                              ),
                              onPressed: () => hidden = !hidden,
                            ),
                          ),
                        )),
                    enabled: false),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
