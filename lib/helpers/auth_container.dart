import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';

class CustomAuthContainer extends StatelessWidget {
  final dynamic height;
  final dynamic width;
  final dynamic widget;
  
  const CustomAuthContainer({super.key, this.height, this.width,this.widget});

  @override
  Widget build(BuildContext context) {
    return  Padding(
           padding:  EdgeInsets.only(left:context.width/20,right:context.width/20),
           child: Container(
            padding: EdgeInsets.all(context.width/20),
            height: height ?? context.height/1.5,
            width: width   ?? double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 3,
                  offset:const  Offset(0, 3),
                  color: AppColors.blackColor.withOpacity(0.3)
                )
              ]
            ),
            child: widget,
           ),
         );
  }
}