import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_text.dart';

class MyPieChartWidget extends StatefulWidget {
  const MyPieChartWidget({super.key});

  @override
  State<StatefulWidget> createState() => PieChartSample1State();
}

class PieChartSample1State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Column(
        children: [
          const SizedBox(height: 28),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Indicator(
                color: AppColors.chartColorBlue,
                text: 'Ride',
                isSquare: false,
                size: touchedIndex == 0 ? 18 : 16,
                textColor: touchedIndex == 0
                    ? AppColors.textColor
                    : AppColors.textColor,
              ),
              Indicator(
                color: AppColors.charColorYellow,
                text: 'Ride Share',
                isSquare: false,
                size: touchedIndex == 1 ? 18 : 16,
                textColor: touchedIndex == 1
                    ? AppColors.textColor
                    : AppColors.textColor,
              ),
              Indicator(
                color: AppColors.charColorOrange,
                text: 'Food',
                isSquare: false,
                size: touchedIndex == 2 ? 18 : 16,
                textColor: touchedIndex == 2
                    ? AppColors.textColor
                    : AppColors.textColor,
              ),
              Indicator(
                color: AppColors.charColorCyan,
                text: 'Package',
                isSquare: false,
                size: touchedIndex == 3 ? 18 : 16,
                textColor: touchedIndex == 3
                    ? AppColors.textColor
                    : AppColors.textColor,
              ),
              Indicator(
                color: AppColors.charColorRed,
                text: 'Document',
                isSquare: false,
                size: touchedIndex == 4 ? 18 : 16,
                textColor: touchedIndex == 4
                    ? AppColors.textColor
                    : AppColors.textColor,
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  startDegreeOffset: 180,
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 1,
                  centerSpaceRadius: 0,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      5,
      (i) {
        final isTouched = i == touchedIndex;
        const color0 = AppColors.chartColorBlue;
        const color1 = AppColors.charColorYellow;
        const color2 = AppColors.charColorOrange;
        const color3 = AppColors.charColorCyan;
        const color4 = AppColors.charColorRed;

        switch (i) {
          case 0:
            return PieChartSectionData(
              color: color0,
              value: 25,
              title: '',
              radius: 75,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? BorderSide(color: AppColors.whiteColor, width: 6)
                  : BorderSide(color: AppColors.whiteColor.withOpacity(0)),
            );
          case 1:
            return PieChartSectionData(
              color: color1,
              value: 25,
              title: '',
              radius: 75,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? BorderSide(color: AppColors.whiteColor, width: 6)
                  : BorderSide(color: AppColors.whiteColor.withOpacity(0)),
            );
          case 2:
            return PieChartSectionData(
              color: color2,
              value: 25,
              title: '',
              radius: 75,
              titlePositionPercentageOffset: 0.6,
              borderSide: isTouched
                  ? BorderSide(color: AppColors.whiteColor, width: 6)
                  : BorderSide(color: AppColors.whiteColor.withOpacity(0)),
            );
          case 3:
            return PieChartSectionData(
              color: color3,
              value: 25,
              title: '',
              radius: 75,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? BorderSide(color: AppColors.whiteColor, width: 6)
                  : BorderSide(color: AppColors.whiteColor.withOpacity(0)),
            );
          case 4:
            return PieChartSectionData(
              color: color4,
              value: 25,
              title: '',
              radius: 75,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? BorderSide(color: AppColors.whiteColor, width: 6)
                  : BorderSide(color: AppColors.whiteColor.withOpacity(0)),
            );
          default:
            throw Error();
        }
      },
    );
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });

  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
              color: color,
            )),
        const SizedBox(width: 4),
        CustomTextWidget(
          text: text,
          textColor: textColor,
        )
      ],
    );
  }
}
