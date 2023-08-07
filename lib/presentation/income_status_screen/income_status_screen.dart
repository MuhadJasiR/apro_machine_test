import 'package:apro_machine_test/core/constats/constants.dart';
import 'package:apro_machine_test/presentation/home_screen/widget/const_list_values.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IncomeStatusScreen extends StatelessWidget {
  IncomeStatusScreen({super.key});

  final List<Color> gradientColor = [kLightPurple, kWhiteColor];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: const Text(
          "Income status",
          style: TextStyle(color: kBlackColor),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 200.h,
              child: LineChart(
                LineChartData(
                    minX: 0,
                    maxX: 4,
                    maxY: 4,
                    minY: 0,
                    titlesData: LinesTitle.getTitleData(),
                    borderData: FlBorderData(show: false),
                    gridData: const FlGridData(show: false),
                    lineBarsData: [
                      LineChartBarData(
                          color: kDeepPurple,
                          dotData: const FlDotData(show: false),
                          isCurved: true,
                          spots: [
                            const FlSpot(0, 1),
                            const FlSpot(0.25, 1),
                            const FlSpot(1, 2),
                            const FlSpot(1.5, 1.7),
                            const FlSpot(2, 2),
                            const FlSpot(2.25, 1.8),
                            const FlSpot(3, 3.25),
                            const FlSpot(3.5, 3.25),
                            const FlSpot(4, 3),
                          ],
                          belowBarData: BarAreaData(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(194, 158, 255, 1),
                                    kWhiteColor
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              show: true))
                    ]),
              ),
            ),
            kHeight(25),
            const Text(
              "Total Balance",
              style: TextStyle(color: kGreyColor, fontSize: 16),
            ),
            kHeight(5),
            const Text(
              "\$ 13.248",
              style: TextStyle(
                  color: kLightPurple,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            kHeight(20),
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
                      "Latest",
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
