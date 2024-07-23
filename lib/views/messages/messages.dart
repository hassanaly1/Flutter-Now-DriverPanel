import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_text.dart';
import 'package:now/views/messages/messages_detail.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.textColor,
          forceMaterialTransparency: true,
          titleSpacing: 0.0,
          leading: Image.asset('assets/images/chat.png'),
          title: const CustomTextWidget(
            text: 'My Chats',
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            textColor: Colors.black,
          ),
          actions: [
            InkWell(
              onTap: () {
                // Get.to(() => ProfileScreen(),
                //     transition: Transition.rightToLeft);
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.jpg'),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  suffixIcon: const Icon(CupertinoIcons.decrease_indent),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 15,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () => Get.to(() => const MessageDetailScreen(),
                          transition: Transition.rightToLeft),
                      dense: true,
                      visualDensity: VisualDensity.compact,
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                      ),
                      title: const CustomTextWidget(
                        text: 'Jane Smith',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        textColor: Colors.black,
                      ),
                      subtitle: const CustomTextWidget(
                        text: 'Hello, How are you',
                        fontSize: 12.0,
                        textColor: Colors.black54,
                      ),
                      trailing: Column(
                        children: [
                          const CustomTextWidget(
                            text: '10:00 AM',
                            fontSize: 12.0,
                            textColor: Colors.black54,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.textColor,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: CustomTextWidget(
                                text: '999 +',
                                fontSize: 8.0,
                                textColor: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
