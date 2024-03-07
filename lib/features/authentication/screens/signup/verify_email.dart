import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
            Get.offAll(()=> const LoginScreen());
          }, icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(BSizes.defaultSpace), 
          child: Column(
            children: [
              // Image
              Image(image: const AssetImage(BImages.deliveredEmailllustration), 
              width: BHelperFunctions.screenWidth() * 0.6,
              ), 
              const SizedBox(height: BSizes.spaceBtwSections,),

              /// title and subtitle
              Text(BTexts.confirmEmail, 
              style: Theme.of(context).textTheme.headlineMedium,
               textAlign: TextAlign.center,), 
               const SizedBox(height: BSizes.spaceBtwItems,), 
               Text('tosinezekiel8@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center), 
                  const SizedBox(height: BSizes.spaceBtwItems,), 
                  Text(BTexts.confirmEmailSubTitle, 
              style: Theme.of(context).textTheme.labelMedium,
               textAlign: TextAlign.center,),
               const SizedBox(height: BSizes.spaceBtwSections,), 

               ///Button
               SizedBox(width: double.infinity, 
               child: ElevatedButton(onPressed: (){},
                child: Text(BTexts.tContinue), 
                ),), 
               const SizedBox(height: BSizes.spaceBtwItems,), 
                SizedBox(width: double.infinity, 
               child: TextButton(onPressed: (){},
                child: Text(BTexts.resendEmail), 
                ),), 


            ],
          ),),
      ),
    );
  }
}