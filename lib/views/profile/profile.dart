import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_button.dart';
import 'package:now/helpers/custom_text.dart';
import 'package:now/views/history/history.dart';
import 'package:now/views/profile/edit_profile.dart';
import 'package:now/views/profile/help_center.dart';
import 'package:now/views/profile/settings.dart';
import 'package:now/views/profile/terms_and_conditions.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<String> items = [
    "Profile",
    "Settings",
    'Help Center',
    'Terms & Conditions',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomUserCard(),
              SizedBox(height: context.height * 0.02),
              const MyOverAllStatsContainer(),
              SizedBox(height: context.height * 0.02),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) => InkWell(
                      splashColor: Colors.transparent,
                      overlayColor: WidgetStateColor.transparent,
                      onTap: () {
                        if (index == 0) {
                          Get.to(() => const EditProfileScreen(),
                              transition: Transition.rightToLeft);
                        } else if (index == 1) {
                          Get.to(() => const SettingsScreen(),
                              transition: Transition.rightToLeft);
                        } else if (index == 2) {
                          Get.to(() => const HelpCenterScreen(),
                              transition: Transition.rightToLeft);
                        } else if (index == 3) {
                          Get.to(() => const TermsAndConditionsScreen(),
                              transition: Transition.rightToLeft);
                        }
                      },
                      child: CustomProfileWidget(title: items[index])),
                ),
              ),
              SizedBox(height: context.height * 0.02),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: CustomButton(
                  buttonText: 'Sign Out',
                  usePrimaryColor: true,
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomProfileWidget extends StatelessWidget {
  final String title;

  const CustomProfileWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextWidget(
            text: title,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            textColor: const Color(0XFF444444),
          ),
          Icon(
            Icons.arrow_forward_rounded,
            color: AppColors.lightGreyColor,
          )
        ],
      ),
    );
  }
}

class CustomUserCard extends StatelessWidget {
  const CustomUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: InkWell(
        onTap: () {
          Get.to(() => const EditProfileScreen(),
              transition: Transition.rightToLeft);
        },
        child: Container(
          height: 170,
          color: Colors.transparent,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: context.width * 0.2),
                  height: 120,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0XFFFFAF78),
                        Color(0XFF321B0C),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextWidget(
                        text: 'D Heaven',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        textColor: Colors.white,
                      ),
                      SizedBox(height: 8.0),
                      CustomTextWidget(
                        text: 'otiswudaris007@gmail.com',
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                        textColor: Colors.white,
                      ),
                      SizedBox(height: 8.0),
                      // SizedBox(
                      //     width: 150,
                      //     child: CustomSecondaryButton(text: 'My Profile')),
                      SizedBox(height: 8.0),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                top: 0,
                child: Container(
                  height: context.height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.lightTextColor),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/user.jpg'),
                        fit: BoxFit.contain,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
