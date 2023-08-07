import 'package:flutter/material.dart';

class SettingsOptionRow extends StatelessWidget {
  const SettingsOptionRow({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 12,
              weight: 3,
            ))
      ],
    );
  }
}
