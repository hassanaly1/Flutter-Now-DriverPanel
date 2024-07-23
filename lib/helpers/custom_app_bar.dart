import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackIcon;
  final String title;
  final VoidCallback? profilePressed;
  final VoidCallback? menuPressed;

  const CustomAppBar(
      {super.key,
      required this.title,
      required this.showBackIcon,
      this.profilePressed,
      this.menuPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.transparent,
      leading: showBackIcon
          ? Padding(
              padding: EdgeInsets.only(left: context.width / 30),
              child: CircleAvatar(
                backgroundColor: AppColors.whiteColor,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left_outlined,
                      size: 30,
                    )),
              ),
            )
          : const SizedBox(),
      title: CustomTextWidget(
        text: title,
        fontSize: 18,
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: context.width / 25),
          child: const Icon(
            Icons.notifications,
            size: 30,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: context.width / 25),
          child: InkWell(
            onTap: profilePressed,
            child: CircleAvatar(
              backgroundColor: AppColors.primaryColor.withOpacity(0.2),
              backgroundImage: const AssetImage('assets/images/user.jpg'),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
