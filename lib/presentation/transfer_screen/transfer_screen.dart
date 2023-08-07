import 'package:apro_machine_test/core/constats/constants.dart';
import 'package:apro_machine_test/presentation/transfer_screen/widgets/build_buttons_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransferScreen extends StatelessWidget {
  TransferScreen({super.key});

  final List<List<String>> buttonText = [
    ["1", "2", "3"],
    ["4", "5", "6"],
    ["7", "8", "9"],
    ["00", "0", "Icon"]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_circle_left_outlined,
          color: kDeepPurple,
          size: 40,
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Text(
              "\$1200",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            kHeight(30),
            Container(
                height: 45.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kGreyColor[100]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      elevation: 0,
                      items: <String>[
                        'Mabank',
                        'Paypal',
                        'Pay later',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: 'Mabank',
                      onChanged: (String? newValue) {
                        print(newValue);
                      },
                    ),
                  ),
                )),
            kHeight(20),
            ...buildButtonsRow(buttonText),
            kHeight(10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: kDeepPurple,
                  maximumSize: Size(165.w, 50.h),
                  minimumSize: Size(165.w, 50.h)),
              child: const Text(
                "Transfer",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String items) => DropdownMenuItem(
        value: items,
        child: Text(items),
      );
}
