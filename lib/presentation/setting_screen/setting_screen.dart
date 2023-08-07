import 'package:apro_machine_test/core/constats/constants.dart';
import 'package:apro_machine_test/presentation/setting_screen/widgets/custom_back_button.dart';
import 'package:apro_machine_test/presentation/setting_screen/widgets/settings_option_row.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0,
        title: const CustomBackButton(),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            kHeight(10),
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  "https://media.gettyimages.com/id/1308903450/photo/portrait-of-male-office-employee-with-curly-hair-smiling.jpg?s=170667a&w=gi&k=20&c=oMYvUu2GE1Faa1IgBWwBvVoCRO5odZ1_6mc9bhnrjjc="),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Jaka",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.edit_outlined))
              ],
            ),
            kHeight(10),
            const SettingsOptionRow(text: "Connected account"),
            const SettingsOptionRow(text: "Privacy and security"),
            const SettingsOptionRow(text: "Login setting"),
            const SettingsOptionRow(text: "Service center"),
            kHeight(40),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_outline_rounded,
                      color: kDeepPurple,
                      size: 40,
                    )),
                kHeight(10),
                const Text(
                  "Delete Account",
                  style: TextStyle(
                      color: kDeepPurple, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
