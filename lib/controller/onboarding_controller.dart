import 'package:crm/view/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/onboarding_info.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;

  forwardAction() {
    if (isLastPage) {
      Get.to(DashboardScreen());
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo("images/onboarding1.jpg", "Order Your Fashion",
        "Now you can order stitch any time right from your mobile"),
    OnboardingInfo("images/onboarding2.png", "Order Your Fashion",
        "Now you can order stitch any time right from your mobile"),
    OnboardingInfo("images/onboarding3.webp", "Order Your Fashion",
        "Now you can order stitch any time right from your mobile"),
  ];
}