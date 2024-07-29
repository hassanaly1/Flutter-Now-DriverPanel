import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/custom_text.dart';
import 'package:now/views/analytics/bar_chart.dart';
import 'package:now/views/analytics/pie_chart.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(
          text: 'Analytics',
          fontSize: 22.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTextWidget(
                text: 'Analytics Dashboard',
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 20.0),
              const Row(
                children: [
                  Expanded(
                    child: AnalyticsColumn(
                      headerText: 'Site Statistics',
                      statsList: [
                        CustomStatsContainer(
                          backgroundColor: Colors.green,
                          text: 'Total Riders',
                          stats: 14,
                        ),
                        CustomStatsContainer(
                          backgroundColor: Colors.orange,
                          text: 'Total Drivers',
                          stats: 28,
                        ),
                        CustomStatsContainer(
                          backgroundColor: Colors.lightBlueAccent,
                          text: 'Vehicle Type',
                          stats: 158,
                        ),
                        CustomStatsContainer(
                          backgroundColor: Colors.teal,
                          text: 'Revenue',
                          stats: 73,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12.0),
                  Expanded(
                    child: AnalyticsColumn(
                      headerText: 'Ride Statistics',
                      statsList: [
                        CustomStatsContainer(
                          backgroundColor: Colors.green,
                          text: 'Total Number of Rides',
                          stats: 14,
                        ),
                        CustomStatsContainer(
                          backgroundColor: Colors.orange,
                          text: 'Cancelled Rides',
                          stats: 28,
                        ),
                        CustomStatsContainer(
                          backgroundColor: Colors.lightBlueAccent,
                          text: 'Rides Completed',
                          stats: 158,
                        ),
                        CustomStatsContainer(
                          backgroundColor: Colors.teal,
                          text: 'Running Rides',
                          stats: 73,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: context.height * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.black12),
                      ),
                      child: const MyPieChartWidget(),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Container(
                      height: context.height * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.black12),
                      ),
                      child: MyBarChartWidget(),
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

class AnalyticsColumn extends StatelessWidget {
  final String headerText;
  final List<Widget> statsList;

  const AnalyticsColumn({
    super.key,
    required this.headerText,
    required this.statsList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnalyticsHeader(text: headerText),
        AnalyticsStats(statsList: statsList),
      ],
    );
  }
}

class AnalyticsHeader extends StatelessWidget {
  final String text;

  const AnalyticsHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: Border.all(color: Colors.black12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomTextWidget(
          text: text,
          fontSize: 22.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class AnalyticsStats extends StatelessWidget {
  final List<Widget> statsList;

  const AnalyticsStats({super.key, required this.statsList});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: statsList.sublist(0, 2),
            ),
            Row(
              children: statsList.sublist(2, 4),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomStatsContainer extends StatelessWidget {
  final String text;
  final int stats;
  final Color backgroundColor;

  const CustomStatsContainer({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.stats,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          color: backgroundColor,
          child: Row(
            children: [
              Container(
                height: context.height * 0.1,
                width: context.width * 0.04,
                color: Colors.black.withOpacity(0.2),
                child: const Icon(Icons.ac_unit),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text: text,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomTextWidget(
                      text: stats.toString(),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
