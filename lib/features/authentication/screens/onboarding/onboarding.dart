
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:qwibix/features/authentication/screens/onboarding/widgets/onboarding_dot_nav.dart';



import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/onboarding_next_btn.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';



class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override 
  Widget build(BuildContext context) {

    // Connecting to the firebase storage using GetX 
    final controller = Get.put(OnBoardingController()); 
    
    return Scaffold(
      body: Stack (
        children: [
/// Horizontal Scrollable Pages 
 PageView(
  controller: controller.pageController,
  onPageChanged: controller.updatePageIndicator,
  children: const [
     OnBoardingPage(
      image: BImages.onBoardingImage1,
      title: BTexts.onBoardingTitle1,
      subTitle: BTexts.onBoardingSubTitle1,
    ),
     OnBoardingPage(
      image: BImages.onBoardingImage2,
      title: BTexts.onBoardingTitle2,
      subTitle: BTexts.onBoardingSubTitle2,
    ),
     OnBoardingPage(
      image: BImages.onBoardingImage3,
      title: BTexts.onBoardingTitle3,
      subTitle: BTexts.onBoardingSubTitle3,
    ),
  ],
 ),
 const OnBoardingSkip(), 
 const OnBoardingDotNavigation(), 
 const OnBoardingNextBtn()
      ],)
    ); 
  }
}

