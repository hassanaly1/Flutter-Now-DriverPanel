import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_button.dart';
import 'package:now/helpers/custom_text.dart';
import 'package:now/helpers/reusable_textfield.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.textColor,
          forceMaterialTransparency: true,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add),
            ),
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.textColor)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20.0,
                  color: AppColors.textColor,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Center(
                child: CustomTextWidget(
                  text: 'Store Verification',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: CustomTextWidget(
                  text:
                      'To ensure the safety and reliability of our platform, please complete the following verification steps.',
                  fontSize: 14.0,
                  maxLines: 3,
                  textColor: AppColors.lightTextColor,
                  textAlign: TextAlign.center,
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
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor: AppColors.lightGreyColor,
                          backgroundImage: const NetworkImage(
                              'https://img.freepik.com/free-photo/close-up-portrait-curly-handsome-european-male_176532-8133.jpg?size=626&ext=jpg&uid=R133237588&ga=GA1.2.1091155359.1700008188&semt=ais'),
                        ),
                        const HeadingAndTextfield(
                          title: 'Store Name',
                          prefixIcon: Icon(Icons.store),
                        ),
                        const HeadingAndTextfield(
                          title: 'Owner’s Full Name',
                          prefixIcon: Icon(CupertinoIcons.person_fill),
                        ),
                        const HeadingAndTextfield(
                          title: 'Email Address',
                          prefixIcon: Icon(Icons.alternate_email_outlined),
                        ),
                        const HeadingAndTextfield(
                          title: 'Phone Number',
                          prefixIcon: Icon(CupertinoIcons.phone_circle_fill),
                        ),
                        const HeadingAndTextfield(
                          title: 'Store Address',
                          prefixIcon: Icon(Icons.location_on),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: CustomButton(
                  buttonText: 'Submit',
                  onTap: () => Get.back(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeadingAndTextfield extends StatelessWidget {
  final String title;
  final double? fontSize;
  final String? hintText;
  final bool? readOnly;
  final VoidCallback? onTap;
  final void Function(String)? onChanged;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const HeadingAndTextfield({
    super.key,
    required this.title,
    this.hintText,
    this.onTap,
    this.readOnly,
    this.validator,
    this.controller,
    this.onChanged,
    this.maxLines,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: title,
            fontWeight: FontWeight.w500,
            maxLines: 2,
            fontSize: fontSize ?? 12,
          ),
          SizedBox(height: context.height * 0.01),
          ReUsableTextField(
            showBackgroundShadow: false,
            controller: controller,
            onChanged: onChanged,
            onTap: onTap,
            readOnly: readOnly,
            hintText: hintText ?? title,
            maxLines: maxLines ?? 1,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            keyboardType: keyboardType,
            validator: validator,
          )
        ],
      ),
    );
  }
}
