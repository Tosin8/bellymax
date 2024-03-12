
import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/model/menu_list.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'menuList.dart';

class menuCategory extends StatelessWidget {
  const menuCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     children:[
         const Padding(
           padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
           child: BSectionHeading(title: 'Our Menu', buttonTitle: 'View All', ),
         ),
       const SizedBox(height: BSizes.spaceBtwItems,), 
        Padding(
          padding: const EdgeInsets.only(right: BSizes.spaceBtwItems), 
          child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                    ...List.generate(
                      FoodMenus.length,
                       (index) =>  menuListCard(
           FoodMenus: FoodMenus[index]
          ),
                      ),
                      ]),
        ),
    
     ],
              );
  }
}