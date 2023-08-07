import 'package:flutter/material.dart';

import '../../../core/constats/constants.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: kDeepPurple,
      child: CircleAvatar(
        backgroundColor: kWhiteColor,
        radius: 16,
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 16,
              color: kDeepPurple,
            )),
      ),
    );
  }
}
