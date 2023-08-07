import 'package:apro_machine_test/core/constats/constants.dart';
import 'package:apro_machine_test/presentation/home_screen/home_screen.dart';
import 'package:apro_machine_test/presentation/income_status_screen/income_status_screen.dart';
import 'package:apro_machine_test/presentation/setting_screen/setting_screen.dart';
import 'package:apro_machine_test/presentation/transfer_screen/transfer_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

int currentIndex = 0;

class _LandingScreenState extends State<LandingScreen> {
  int _currentIndex = 0;

  List<IconData> selectedIconList = [
    Icons.account_balance_wallet_rounded,
    Icons.insert_chart_rounded,
    Icons.notifications,
    Icons.settings_applications,
  ];

  List<IconData> unSelectedIconList = [
    Icons.account_balance_wallet_outlined,
    Icons.insert_chart_outlined_rounded,
    Icons.notifications_outlined,
    Icons.settings_applications_outlined,
  ];

  List screens = [
    const HomeScreen(),
    IncomeStatusScreen(),
    TransferScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          height: displayWidth * .180,
          decoration: BoxDecoration(
            color: kDeepPurple,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(4, (index) {
                return IconButton(
                  iconSize: 30,
                  icon: Icon(
                      _currentIndex == index
                          ? selectedIconList[index]
                          : unSelectedIconList[index],
                      color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                );
              }),
            ),
          ),
        ),
      ),
      body: screens[_currentIndex],
    );
  }
}
