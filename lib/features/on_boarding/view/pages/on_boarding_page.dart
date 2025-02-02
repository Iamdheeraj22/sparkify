import 'dart:developer';
import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sparkify/cores/common/widgets/button.dart';
import 'package:sparkify/cores/res/strings/app_heading_strings.dart';
import 'package:sparkify/cores/res/strings/app_message_strings.dart';
import 'package:sparkify/cores/themes/app_pallete.dart';
import 'package:sparkify/features/on_boarding/model/on_boarding_intro_model.dart';
import 'package:sparkify/utils/image_utils.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  static const String route = '/on-boarding';

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController carouselController;
  late PageController pageViewController;
  int currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    carouselController = PageController();
    pageViewController = PageController(initialPage: 0);
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer =
        Timer.periodic(const Duration(seconds: 1, milliseconds: 500), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % intros.length;
        carouselController.animateToPage(
          currentIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
        pageViewController.animateToPage(
          currentIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    carouselController.dispose();
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: height * 0.4),
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: carouselController,
              itemCount: ImageUtils().onBoardingImages.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  ImageUtils().onBoardingImages[index],
                  fit: BoxFit.contain,
                  height: height * 0.4,
                  width: width / 2,
                );
              },
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60),
            height: height * 0.15,
            child: PageView.builder(
              controller: pageViewController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: intros.length,
              itemBuilder: (ctx, index) {
                final intro = intros[index];
                return Column(
                  children: [
                    Text(
                      intro.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppPallete.red,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Text(
                        intro.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: AppPallete.black,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          //Create indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              intros.length,
              (index) {
                return RepaintBoundary(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 10,
                    width: 10,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: currentIndex == index
                          ? AppPallete.red
                          : AppPallete.grey,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          Button(
            onPressed: () {},
            title: AppHeadingStrings.createAnAccountTxt,
          ),
          SizedBox(
            height: height * 0.025,
          ),
          RichText(
              text: TextSpan(
            text: AppHeadingStrings.alreadyHaveAnAccountTxt,
            style: const TextStyle(
              color: AppPallete.black,
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: AppHeadingStrings.loginTxt,
                style: const TextStyle(
                  color: AppPallete.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    log('Login tapped');
                  },
              ),
            ],
          )),
        ],
      ),
    );
  }

  List<OnBoardingIntroModel> intros = [
    OnBoardingIntroModel(
      title: AppHeadingStrings.algorithm,
      description: AppMessageStrings.algoTxt,
    ),
    OnBoardingIntroModel(
      title: AppHeadingStrings.matches,
      description: AppMessageStrings.matchesTxt,
    ),
    OnBoardingIntroModel(
      title: AppHeadingStrings.premium,
      description: AppMessageStrings.premiumTxt,
    ),
  ];
}
