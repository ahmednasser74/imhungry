import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/features/sign_up/presentation/widgets/slider_item_widget.dart';

class SliderController extends GetxController {
  final _pageIndex = 0.obs;
  final PageController pageController = PageController();

  int get getPageIndex => _pageIndex.value;

  set changePageIndex(int pageIndex) => _pageIndex.value = pageIndex;

  final List<SliderItemWidget> sliderItemWidgetList = [
    SliderItemWidget(
      title: 'Feed your \nHunger...',
      description:
          'choose your best meal from our \n menu, breakfast till dinner...',
      image: 'assets/images/sign_up/feed_your_hungry_icon.svg',
    ),
    SliderItemWidget(
      title: 'Fast \nDelivery...',
      description:
          'No matter where you are, you\'ll \n menu, feed your hunger fast.',
      image: 'assets/images/sign_up/delivery_icon.svg',
    ),
    SliderItemWidget(
      title: 'Fresh \nfood...',
      description: 'fresh meat and vegetables from \nour kitchen to you.',
      image: 'assets/images/sign_up/fresh_icon.svg',
    ),
  ];

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void onPressedNext() {
    if (getPageIndex != sliderItemWidgetList.length - 1) {
      pageController.animateToPage(getPageIndex + 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeInExpo);
    } else {
      Future.delayed(
        Duration.zero,
        () => Get.offAndToNamed(Routes.signUpScreen),
      );
    }
  }

  void onPressedSkip() => Future.delayed(
        Duration.zero,
        () => Get.toNamed(Routes.signUpScreen),
      );

  Widget buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10 : 10,
      width: isCurrentPage ? 40 : 10,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
