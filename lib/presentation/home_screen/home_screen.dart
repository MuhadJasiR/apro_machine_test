import 'package:apro_machine_test/core/constats/constants.dart';
import 'package:apro_machine_test/presentation/home_screen/widget/const_list_values.dart';
import 'package:apro_machine_test/presentation/home_screen/widget/round_custom_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: kWhiteColor,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wallet",
              style: TextStyle(fontSize: 25, color: kBlackColor),
            ),
            Text(
              "Active",
              style: TextStyle(fontSize: 14, color: kGreyColor),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                "https://media.gettyimages.com/id/1308903450/photo/portrait-of-male-office-employee-with-curly-hair-smiling.jpg?s=170667a&w=gi&k=20&c=oMYvUu2GE1Faa1IgBWwBvVoCRO5odZ1_6mc9bhnrjjc="),
          ),
        ],
      ),
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                color: kDeepPurple,
              ),
              height: 130.h,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Balance",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              kHeight(3),
                              const Text(
                                "\$ 1.234",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Card",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              kHeight(3),
                              const Text(
                                "Mabank",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Positioned(
                    top: -30,
                    left: 80,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: kLightPurple,
                    ),
                  ),
                  const Positioned(
                    bottom: -70,
                    right: 70,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: kLightPurple,
                      child: CircleAvatar(
                        backgroundColor: kDeepPurple,
                        radius: 56,
                      ),
                    ),
                  )
                ],
              ),
            ),
            kHeight(15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundCustomCard(
                  icon: Icon(
                    Icons.find_replace_outlined,
                    color: kBlackColor,
                    size: 30,
                  ),
                  title: "Transfer",
                ),
                RoundCustomCard(
                  icon: Icon(
                    Icons.ios_share_rounded,
                    color: kBlackColor,
                    size: 30,
                  ),
                  title: "Payment",
                ),
                RoundCustomCard(
                  icon: Icon(
                    Icons.monetization_on_outlined,
                    color: kBlackColor,
                    size: 30,
                  ),
                  title: "Payout",
                ),
                RoundCustomCard(
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: kBlackColor,
                    size: 30,
                  ),
                  title: "Top up",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Last Transaction",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View all",
                      style: TextStyle(color: kLightPurple),
                    ))
              ],
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(17),
                        child: Image(
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                            image: NetworkImage(assetImages[index])),
                      ),
                      title: Text(
                        texts[index],
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(subTexts[index]),
                      trailing: const Text(
                        "\$12",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => kHeight(5),
                  itemCount: 4),
            )
          ],
        ),
      ),
    );
  }
}
