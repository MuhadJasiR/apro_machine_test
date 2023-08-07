import 'package:flutter/material.dart';

import '../../../core/constats/constants.dart';

class RoundCustomCard extends StatelessWidget {
  RoundCustomCard({super.key, required this.icon, required this.title});
  final Icon icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: CircleAvatar(
              radius: 25, backgroundColor: kWhiteColor, child: icon),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              title,
              style: TextStyle(color: kLightPurple),
            ))
      ],
    );
  }
}
