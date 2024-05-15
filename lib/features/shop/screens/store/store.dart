import 'package:ecommerceshop/common/widgets/appbar/appbar.dart';
import 'package:ecommerceshop/common/widgets/appbar/tabbar.dart';
import 'package:ecommerceshop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerceshop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerceshop/common/widgets/texts/section_heading.dart';
import 'package:ecommerceshop/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerceshop/utils/constants/colors.dart';
import 'package:ecommerceshop/utils/constants/image_strings.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/icons/t_circular_image.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../utils/constants/enums.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5 ,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(onPressed: (){}),
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxisScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440,
      
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
      
                  children:   [
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                    const SizedBox(height: TSizes.spaceBtwSections),
      
                    TSectionHeading(title: 'Featured Brands',  onPressed: (){}),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),
     TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
             return const TBrandCard(showBorder: false);
              }
     ),
                ]
                ),
              ),
      
              bottom: const TTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ];
        },
            body:  TabBarView(
                children: [
              Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TBrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1],)
                    ],
                  ),
              ),
                  Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TBrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1],)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TBrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1],)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TBrandShowcase(images: [TImages.productImage3, TImages.productImage2, TImages.productImage1],)
                      ],
                    ),
                  ),
            ]),
        ),
      ),
    );
  }
}





