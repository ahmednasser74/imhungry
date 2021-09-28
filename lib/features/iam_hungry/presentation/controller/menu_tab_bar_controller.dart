import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuTabBarController extends GetxController
    with SingleGetTickerProviderMixin {
  var _currentIndex = 0.obs;
  late TabController _tabController;

  get getCurrentIndex => _currentIndex;

  TabController get getTabController => _tabController;

  @override
  void onInit() {
    super.onInit();
    _tabController = new TabController(initialIndex: 0, length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
