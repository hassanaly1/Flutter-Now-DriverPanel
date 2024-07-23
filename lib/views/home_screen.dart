import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:now/helpers/appcolors.dart';
import 'package:now/helpers/custom_app_bar.dart';
import 'package:now/helpers/custom_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;
  final List<String> _images = [
    'assets/images/banner1.PNG',
    'assets/images/banner2.PNG',
    'assets/images/banner3.PNG',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(title: 'Home Screen', showBackIcon: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(context.width * 0.05),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomTextWidget(
              text: 'What are you looking for today?',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: context.height * 0.02),
            const CustomTextWidget(
              text: 'Today’s Highlights',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: context.height * 0.05),
            CarouselSlider.builder(
              carouselController: _carouselController,
              itemCount: _images.length,
              itemBuilder: (context, index, realIndex) {
                return CustomBannerContainer(imageUrl: _images[index]);
              },
              options: CarouselOptions(
                height: context.height * 0.18,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(height: context.height * 0.02),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: _currentIndex,
                count: _images.length,
                effect: const ExpandingDotsEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey,
                ),
                onDotClicked: (index) {
                  _carouselController.animateToPage(index);
                },
              ),
            ),
            SizedBox(height: context.height * 0.05),
            Divider(color: AppColors.primaryColor),
            SizedBox(height: context.height * 0.02),
            const CustomTextWidget(
              text: 'Our Services',
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: context.height * 0.02),
            const Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                CustomModuleWidget(imagePath: 'assets/images/food.png'),
                CustomModuleWidget(imagePath: 'assets/images/bike.png'),
                CustomModuleWidget(imagePath: 'assets/images/ride-share.png'),
                CustomModuleWidget(imagePath: 'assets/images/document.png'),
                CustomModuleWidget(imagePath: 'assets/images/package.png'),
              ],
            ),
          ]),
        ),
      ),
    ));
  }
}

class CustomModuleWidget extends StatelessWidget {
  final String imagePath;

  const CustomModuleWidget({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: context.height * 0.1,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          imagePath,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}

class CustomBannerContainer extends StatelessWidget {
  final String imageUrl;

  const CustomBannerContainer({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        // height: context.height * 0.15,
        width: context.width * 0.7,
        decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(16.0),
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 3,
                  offset: const Offset(0, 1),
                  color: AppColors.blackColor.withOpacity(0.1))
            ]),
      ),
    );
  }
}
