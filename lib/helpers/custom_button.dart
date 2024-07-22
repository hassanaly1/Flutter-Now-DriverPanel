import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:now/helpers/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Color? textColor;
  final Color? borderColor;
  final double width;
  final double? height;
  final double? fontSize;
  final bool usePrimaryColor;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.width = double.infinity,
    this.textColor,
    this.borderColor,
    this.height,
    this.usePrimaryColor = false,
    this.fontSize,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
          child: isLoading
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SpinKitRing(
                    lineWidth: 2.0,
                    color: usePrimaryColor ? Colors.black87 : Colors.white,
                  ),
                )
              : CustomTextWidget(
                  text: buttonText,
                  fontSize: fontSize ?? 14,
                  textColor: usePrimaryColor ? Colors.black87 : Colors.white,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                )),
    );
  }
}
