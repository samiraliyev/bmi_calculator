import 'dart:math';

import 'package:bmi_calculator/Constants/app_colors.dart';
import 'package:bmi_calculator/Constants/app_strings.dart';
import 'package:bmi_calculator/Extension/double_extension.dart';
import 'package:flutter/material.dart';

import '../../Widgets/calculate_button.dart';
import '../../Widgets/gender_view.dart';
import '../../Widgets/global_app_bar.dart';
import '../../Widgets/height_box.dart';
import '../../Widgets/weight_and_age_view.dart';
import '../ResutPageView/result_page_view.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double height = 0;
  int weightCount = 0;

  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: const GlobalAppBar(title: AppString.appTitle),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const GenderView(),
            const SizedBox(height: 16),
            HeightBox(
              height: height,
              onSlide: (v) => setState(
                () => height = v,
              ),
            ),
            const SizedBox(height: 16),
            WeightAndAgeView(
              weight: weightCount,
              onDecrementWeight: () {
                weightCount--;
                setState(() {});
              },
              onIncrementWeight: () {
                weightCount++;
                setState(() {});
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        text: AppString.calcBtn,
        onCalculate: () {
          final result = weightCount / pow(height.toMetr, 2);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => ResultPage(result: result),
            ),
          );
        },
      ),
    );
  }
}
