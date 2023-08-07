import 'package:apro_machine_test/core/constats/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

final assetImages = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_VP8iG-EoomPXgYbUnS25Osi91vIrwg7-IA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0JwRDf4mnAzfO0_R1yCrnIsLxVwe6CUWQLg&usqp=CAU",
  "https://www.91-cdn.com/pricebaba-blogimages/wp-content/uploads/2020/10/phone-pe.png",
  "https://play-lh.googleusercontent.com/HArtbyi53u0jnqhnnxkQnMx9dHOERNcprZyKnInd2nrfM7Wd9ivMNTiz7IJP6-mSpwk"
];
final texts = [
  "Netflix",
  "Paypal",
  "Paylater",
  "Gpay",
];

final subTexts = [
  "Month subscription",
  "Tax",
  "Buy item",
  "Month subscription",
];

//this is the bottom value which i have given for the graph..
class LinesTitle {
  static getTitleData() => FlTitlesData(
      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(
          sideTitles: SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          switch (value) {
            case 0:
              return const Text(
                "Oct",
                style: TextStyle(color: kGreyColor),
              );
            case 1:
              return const Text(
                "Nov",
                style: TextStyle(color: kGreyColor),
              );
            case 2:
              return const Text(
                "Dec",
                style: TextStyle(color: kGreyColor),
              );
            case 3:
              return const Text(
                "Jan",
                style: TextStyle(color: kGreyColor),
              );
            case 4:
              return const Text(
                "Feb",
                style: TextStyle(color: kGreyColor),
              );
          }
          return const Text("");
        },
      )));
}
