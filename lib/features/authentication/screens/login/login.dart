import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/common/styles/spacing_styles.dart';
import 'package:qwibix/common/widgets/BForm/form_divider.dart';
import 'package:qwibix/common/widgets/BForm/social_btns.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/constants/text_strings.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';


import '../../controllers/login/login_controller.dart';
import 'login.widget/login_form.dart';
import 'login.widget/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late LoginController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(LoginController());
  }

  @override
  void dispose() {
    Get.delete<LoginController>();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Logo, Title and SubTitle
              BLoginHeader(dark: dark),
              const SizedBox(
                height: BSizes.spaceBtwInputFields,
              ),
              /// Form
               const BLoginForm(),

              BFormDivider(
  dark: dark,
  DividerText: (BTexts.orSignInWith.capitalize ?? 'Sign In With').toString(),
  style: Theme.of(context).textTheme.labelMedium,
),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),
              /// Footer
               const BFormSocialMedia(),
               
            ],
          ),
        ),
      ),
    );
  }
}



              // Divider
              // BFormDivider(
              //   dark: dark,
              //   DividerText: BTexts.orSignInWith.capitalize ?? 'Sign In With',
              //   style: Theme.of(context).textTheme.labelMedium,
              // ),

              // biometrics.
              //  const SizedBox(
              //   height: BSizes.spaceBtwSections,
              // ),
              //  const Icon(Icons.fingerprint)