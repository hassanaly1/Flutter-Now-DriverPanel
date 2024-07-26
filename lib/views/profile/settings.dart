import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_button.dart';
import 'package:now/helpers/custom_text.dart';
import 'package:now/views/profile/edit_profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: AppBar(
            backgroundColor: AppColors.textColor,
            forceMaterialTransparency: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Center(
                  child: CustomTextWidget(
                    text: 'Settings',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: context.height * 0.02),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 12.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const CustomTextWidget(
                            text: 'Change Password',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: context.height * 0.02),
                          const HeadingAndTextfield(
                            title: 'Current Password',
                            prefixIcon: Icon(Icons.password_sharp),
                          ),
                          const HeadingAndTextfield(
                            title: 'New Password',
                            prefixIcon: Icon(Icons.password_sharp),
                          ),
                          const HeadingAndTextfield(
                            title: 'Confirm New Password',
                            prefixIcon: Icon(Icons.password_sharp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: CustomButton(
                    buttonText: 'Change Password',
                    usePrimaryColor: true,
                    onTap: () => Get.back(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
