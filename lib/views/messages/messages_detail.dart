import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_text.dart';

class MessageDetailScreen extends StatelessWidget {
  const MessageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          titleSpacing: 0.0,
          backgroundColor: AppColors.whiteColor,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.blackColor),
              ),
              child: InkWell(
                onTap: () => Get.back(),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20.0,
                  color: AppColors.blackColor,
                ),
              ),
            ),
          ),
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.jpg'),
                ),
              ),
              CustomTextWidget(
                text: 'Jane Smith',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                textColor: Colors.black,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              Expanded(
                child: MessagesPart(),
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  hintText: 'Write your message',
                  prefixIcon: const Icon(Icons.add),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.lightGreyColor),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  suffixIcon: const Icon(CupertinoIcons.arrowtriangle_right),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessagesPart extends StatelessWidget {
  MessagesPart({
    super.key,
  });

  final List<ChatMessage> chats = [
    ChatMessage(
      isSender: true,
      content: 'Hello!',
      timestamp: DateTime.now().subtract(const Duration(minutes: 1)),
    ),
    ChatMessage(
      isSender: false,
      content: 'Hi, how are you?',
      timestamp: DateTime.now().subtract(const Duration(minutes: 1)),
    ),
    ChatMessage(
      isSender: true,
      content: 'I\'m good, thanks! How about you?',
      timestamp: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // reverse: true,
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        final message = chats[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            mainAxisAlignment: message.isSender
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              if (message.isSender)
                const CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                  radius: 20,
                ),
              Flexible(
                child: ChatCard(message: message),
              ),
              if (!message.isSender)
                CircleAvatar(
                  backgroundImage: message.isSender
                      ? const NetworkImage('https://i.pravatar.cc/300')
                      : const AssetImage('assets/images/user2.jpg'),
                  radius: 20,
                ),
            ],
          ),
        );
      },
    );
  }
}

class ChatCard extends StatelessWidget {
  final ChatMessage message;

  const ChatCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: message.isSender ? Colors.white : const Color(0XFF334E6F),
          border: Border.all(color: AppColors.lightGreyColor),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12.0),
            topRight: const Radius.circular(12.0),
            bottomLeft:
                !message.isSender ? const Radius.circular(12.0) : Radius.zero,
            bottomRight:
                !message.isSender ? Radius.zero : const Radius.circular(16.0),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.shade300,
          //     blurRadius: 15.0,
          //     spreadRadius: 5.0,
          //   ),
          //   const BoxShadow(
          //     color: Colors.white,
          //     offset: Offset(0.0, 0.0),
          //     blurRadius: 0.0,
          //     spreadRadius: 0.0,
          //   ),
          // ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: !message.isSender ? 'You' : 'Jane Smith',
                fontSize: 10,
                textColor: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
              CustomTextWidget(
                text: message.content,
                fontSize: 14,
                textColor: message.isSender ? Colors.black : Colors.white,
                maxLines: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text:
                        '${message.timestamp.hour.toString().padLeft(2, '0')}:${message.timestamp.minute.toString().padLeft(2, '0')}',
                    fontSize: 10,
                    textColor: message.isSender ? Colors.black : Colors.white,
                  ),
                  const SizedBox(width: 4.0),
                  Visibility(
                    visible: message.isSender,
                    child: const Icon(
                      Icons.done_all,
                      size: 15.0,
                      color: Color(0XFF334E6F),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatMessage {
  final bool isSender;
  final String content;
  final DateTime timestamp;

  ChatMessage({
    required this.isSender,
    required this.content,
    required this.timestamp,
  });
}
