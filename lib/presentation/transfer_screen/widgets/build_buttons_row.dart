import 'package:flutter/material.dart';

import '../../../core/constats/constants.dart';

List<Column> buildButtonsRow(List<List<String>> buttonText) {
  return buttonText.map((row) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: row.map((text) {
            return text == 'Icon'
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.dangerous_outlined))
                : TextButton(
                    onPressed: () {},
                    child: Text(
                      text,
                      style: const TextStyle(color: kBlackColor, fontSize: 25),
                    ),
                  );
          }).toList(),
        ),
        kHeight(30),
      ],
    );
  }).toList();
}
