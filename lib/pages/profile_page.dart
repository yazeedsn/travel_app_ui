import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Profile', style: headerStyle),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xFF8C8C8C),
                  )),
            ],
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: secondaryColor,
                  radius: 55,
                ),
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
                    decoration: InputDecoration(
                        label: Text(
                          '********',
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
                            child: const ImageIcon(
                              AssetImage('assets/images/eye.png'),
                            ),
                          ),
                        )),
                    enabled: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
