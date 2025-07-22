import 'package:educational_app/app.dart';
import 'package:educational_app/common/utils/app_assets.dart';
import 'package:educational_app/common/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.drawer),
                  Row(
                    spacing: 10,
                    children: <Widget>[
                      Image.asset(AppAssets.notification),
                      Image.asset(AppAssets.profile),
                    ],
                  ),
                ],
              ),
              Gap(15),
              Text(
                "Hi Waseem Ashraf",
                style: AppTextStyle.heading.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "You have ",
                  style: AppTextStyle.subHeading.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                      text: "4 pending test",
                      style: AppTextStyle.subHeading.copyWith(
                        color: AppColors.red,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(text: " this week "),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
