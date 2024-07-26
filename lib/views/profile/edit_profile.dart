import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_button.dart';
import 'package:now/helpers/custom_text.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
                    text: 'Profile',
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
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 50.0,
                                backgroundColor: AppColors.lightGreyColor,
                                backgroundImage: const NetworkImage(
                                    'https://img.freepik.com/free-photo/close-up-portrait-curly-handsome-european-male_176532-8133.jpg?size=626&ext=jpg&uid=R133237588&ga=GA1.2.1091155359.1700008188&semt=ais'),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: context.height * 0.02),
                          const Center(
                            child: CustomTextWidget(
                              text: 'Mr James Adamson',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: context.height * 0.02),
                          const HeadingAndTextfield(
                            title: 'Account Name',
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
                            title: 'Address',
                            prefixIcon: Icon(Icons.location_on),
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
                    buttonText: 'Submit',
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.borderColor),
            ),
            child: TextFormField(
              readOnly: readOnly ?? false,
              onTap: onTap,
              controller: controller,
              onChanged: onChanged,
              validator: validator,
              maxLines: maxLines,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: AppColors.textColor,
              ),
              keyboardType: keyboardType,
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.symmetric(vertical: 4.0),
                // isCollapsed: true,
                filled: true,
                fillColor: AppColors.fieldColor,
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.transparent)),
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                hintText: title,
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: AppColors.lightTextColor,
                ),
                errorStyle: const TextStyle(
                  fontSize: 8.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Colors.redAccent,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
