

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/screens/home/widgets/category_shimmer.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../controllers/category_controller.dart';
import 'menuList.dart';
import 'subCategoryproduct.dart';

class menuCategory extends StatelessWidget {
  const menuCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final categoryController = Get.put(CategoryController());
    

    return Column(
     children:[
         const Padding(
           padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
           child: BSectionHeading(title: 'Categories', buttonTitle: 'View All', ),
         ),
       const SizedBox(height: BSizes.spaceBtwItems,), 


// Localhost storage. 

    // Padding(
    //       padding: const EdgeInsets.only(right: BSizes.spaceBtwItems), 
    //       child: SingleChildScrollView(
    //         scrollDirection: Axis.horizontal,
                     
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                 ...List.generate(
    //                   FoodMenus.length,
    //                    (index) =>  Padding(
    //                      padding: const EdgeInsets.all(6.0),
    //                      child: menuListCard(
    //                                 FoodMenus: FoodMenus[index]
    //                                ),
    //                    ),
    //                   ),
    //                   ]),
    //     ),
    //   ) , 

       Obx(() {
        if(categoryController.isLoading.value) return const BCategoryShimmer(); 

        if(categoryController.featuredCategories.isEmpty) {
          return Center(child: Text('No Data Found!', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),); 
        }
        //  return Padding(
        //     padding: const EdgeInsets.only(right: BSizes.spaceBtwItems), 
            // child: SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
                       

                       // FOR LOCALHOST MENULIST CATEGORY
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                 ...List.generate(
      //                   //FoodMenus.length,
      //                   categoryController.featuredCategories.length,
                   
      //                    (index) {
      //                    final category = categoryController.featuredCategories[index]; 
      //                    return Padding(
      //                      padding: const EdgeInsets.all(6.0),
                          
      //                      child: menuListCard(
      //                                 FoodMenus: FoodMenus[index]
      //                                ),
      //                    );
      //  }),
      //                   ]),
      return  SizedBox(
        height: 80,
        child: ListView.builder(
          shrinkWrap: true, 
          itemCount: categoryController.featuredCategories.length, 
          scrollDirection: Axis.horizontal, 
          itemBuilder: (_, index) {
            final category = categoryController.featuredCategories[index];
            return MenuListCard(
              image: category.image,
              title: category.name, 
              onTap: () => Get.to(() => const SubCategoryScreen()), 
            );
          },
        )
      );
       //   );
              // );
   } ) , 
       ],
              );
  }
}
