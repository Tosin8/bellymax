
import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium!.apply(color: dark ? Colors.white : Colors.black),), 
        // actions: [
        //   BCircularIcon(dark: dark, 
        //   icon: Iconsax.add,
        //   //onPressed: () => Get.to(HomeScreen()),
        //   ), 
        // ],
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(BSizes.defaultSpace)),
      ),
    );
  }
}