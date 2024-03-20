import 'package:bellymax/common/styles/spacing_styles.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, 
  
  required this.image, 
  required this.title,
   required this.subTitle,
    required this.onPressed
    });


final String image, title, subTitle; 
final VoidCallback onPressed; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacingStyle.paddingWithAppBarHeight * 2, 
          child: Column(
            children: [
              Lottie.asset(image,
               width: MediaQuery.of(context).size.width * 0.6), 
            
               
              const SizedBox(height: BSizes.spaceBtwSections,),

              /// title and subtitle
              Text(title, 
              style: Theme.of(context).textTheme.headlineMedium,
               textAlign: TextAlign.center,), 
               const SizedBox(height: BSizes.spaceBtwItems,), 
               
                  Text(subTitle, 
              style: Theme.of(context).textTheme.labelMedium,
               textAlign: TextAlign.center,),
               const SizedBox(height: BSizes.spaceBtwSections,), 

               /// Button 
               SizedBox(
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: onPressed,
                   child: const Text(BTexts.tContinue)),
               )

            ],
          ),),

      )
    );
  }
}