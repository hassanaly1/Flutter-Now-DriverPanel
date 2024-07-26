import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_app_bar.dart';
import 'package:now/helpers/custom_text.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: const CustomAppBar(
            title: 'History', showBackIcon: true, showNotificationsIcon: false),
        body: NestedScrollView(
          // floatHeaderSlivers: true,
          dragStartBehavior: DragStartBehavior.down,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                expandedHeight: context.height * 0.4,
                backgroundColor: AppColors.whiteColor,
                flexibleSpace: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const MyDatePickerWidget(),
                          SizedBox(height: context.height * 0.02),
                          const MyOverAllStatsContainer()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ];
          },
          body: Container(
            color: Colors.white30,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextWidget(
                      text: 'All Deliveries',
                      fontSize: 18.0,
                      textColor: Colors.black87,
                      fontWeight: FontWeight.w700),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildFilterChip('Food', Icons.fastfood_outlined),
                        _buildFilterChip('Ride', Icons.car_crash_rounded),
                        _buildFilterChip('Package', Icons.backpack_rounded),
                        _buildFilterChip('Document', Icons.edit_document),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const MyCustomExpansionTile();
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildFilterChip(String label, IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: FilterChip(
      label: CustomTextWidget(text: label),
      onSelected: (value) {},
      avatar: Icon(icon),
      backgroundColor: Colors.white,
    ),
  );
}

class MyCustomExpansionTile extends StatelessWidget {
  const MyCustomExpansionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.lightGreyColor),
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.all(12.0),
          backgroundColor: Colors.grey.shade200,
          collapsedBackgroundColor: Colors.grey.shade100,
          iconColor: AppColors.primaryColor,
          collapsedShape: ShapeBorder.lerp(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            1.0,
          ),
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            1.0,
          ),
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          visualDensity: VisualDensity.compact,
          title: CustomTextWidget(
            text: 'Order-Id: 242nvklm0',
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            textColor: AppColors.primaryColor,
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomTextWidget(
                    text: 'Status: ',
                    textColor: AppColors.lightTextColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                  const CustomTextWidget(
                    text: 'Completed',
                    textColor: Colors.green,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextWidget(
                    text: 'Date: ',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    textColor: AppColors.lightTextColor,
                  ),
                  CustomTextWidget(
                    text: '12th September 2022',
                    fontSize: 14.0,
                    textColor: AppColors.lightTextColor,
                  ),
                ],
              ),
            ],
          ),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomTextWidget(
                  text: 'Customer Name: ',
                  fontSize: 14.0,
                  textColor: AppColors.lightTextColor,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextWidget(
                  text: 'John Doe',
                  textColor: AppColors.lightTextColor,
                  fontSize: 14.0,
                ),
              ],
            ),
            SizedBox(height: context.height * 0.005),
            Row(
              children: [
                CustomTextWidget(
                  text: 'Address: ',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  textColor: AppColors.lightTextColor,
                ),
                CustomTextWidget(
                  text: '123 Main St, Any town USA 12345',
                  textColor: AppColors.lightTextColor,
                  fontSize: 14.0,
                ),
              ],
            ),
            SizedBox(height: context.height * 0.005),
            Row(
              children: [
                CustomTextWidget(
                  text: 'Amount: ',
                  textColor: AppColors.lightTextColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextWidget(
                  text: '\$50.00',
                  textColor: AppColors.lightTextColor,
                  fontSize: 14.0,
                ),
              ],
            ),
            Row(
              children: [
                CustomTextWidget(
                  text: 'Tip: ',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  textColor: AppColors.lightTextColor,
                ),
                CustomTextWidget(
                  text: '\$7.00',
                  fontSize: 14.0,
                  textColor: AppColors.lightTextColor,
                ),
              ],
            ),
            SizedBox(height: context.height * 0.005),
            Row(
              children: [
                CustomTextWidget(
                  text: 'Delivery Type: ',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  textColor: AppColors.lightTextColor,
                ),
                CustomTextWidget(
                  text: 'Food Delivery',
                  fontSize: 14.0,
                  textColor: AppColors.lightTextColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyOverAllStatsContainer extends StatelessWidget {
  const MyOverAllStatsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: AppColors.lightGreyColor)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomStatsWidget(
            title: 'Tips',
            icon: CupertinoIcons.money_dollar_circle_fill,
            stats: '50.00 USD',
          ),
          CustomStatsWidget(
            title: 'Deliveries',
            icon: Icons.delivery_dining,
            stats: '72',
          ),
          CustomStatsWidget(
            title: 'Deliveries',
            icon: CupertinoIcons.money_dollar_circle_fill,
            stats: '\$7561 USD',
          ),
        ],
      ),
    );
  }
}

class CustomStatsWidget extends StatelessWidget {
  final String title;
  final String stats;
  final IconData icon;

  const CustomStatsWidget({
    super.key,
    required this.title,
    required this.stats,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomTextWidget(
            text: title,
            fontSize: 14.0,
            textColor: AppColors.lightTextColor,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: context.height * 0.01),
          Icon(
            icon,
            color: AppColors.primaryColor,
          ),
          SizedBox(height: context.height * 0.01),
          CustomTextWidget(
            text: stats,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            textColor: Colors.black87,
          ),
        ],
      ),
    );
  }
}

class MyDatePickerWidget extends StatelessWidget {
  const MyDatePickerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: AppColors.lightGreyColor)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: EasyDateTimeLine(
          initialDate: DateTime.now(),
          activeColor: AppColors.primaryColor.withOpacity(0.8),
          headerProps: EasyHeaderProps(
            centerHeader: false,
            monthPickerType: MonthPickerType.switcher,
            dateFormatter: const DateFormatter.fullDateMonthAsStrDY(),
            monthStyle: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
          dayProps: EasyDayProps(
              dayStructure: DayStructure.dayStrDayNumMonth,
              inactiveDayStyle: DayStyle(
                dayNumStyle: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                  fontFamily: 'Poppins',
                ),
                dayStrStyle: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  fontFamily: 'Poppins',
                ),
                monthStrStyle: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  fontFamily: 'Poppins',
                ),
              ),
              landScapeMode: false,
              todayStyle: DayStyle(
                  dayNumStyle: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    fontFamily: 'Poppins',
                  ),
                  dayStrStyle: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                  monthStrStyle: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ))),
          timeLineProps: EasyTimeLineProps(
            backgroundColor: AppColors.whiteColor,
          ),
          onDateChange: (selectedDate) {
            //`selectedDate` the new date selected.
          },
        ),
      ),
    );
  }
}
