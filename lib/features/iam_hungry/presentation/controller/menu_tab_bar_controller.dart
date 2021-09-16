import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuTabBarController extends GetxController
    with SingleGetTickerProviderMixin {
  var _currentIndex = 0.obs;
  late TabController _controller;
  late VoidCallback onChanged;
  late TabBarView tabBarView;
  var _selectedPage = 2.obs;

  get getCurrentIndex => _currentIndex;

  get getTabController => _controller;

  set setSelectedPage(int selectedPage) => _selectedPage.value = selectedPage;

  @override
  void onInit() {
    super.onInit();
    _controller = new TabController(
      initialIndex: _selectedPage.value,
      length: 7,
      vsync: this,
    );
    onChanged = () => _currentIndex.value = this._controller.index;
    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(onChanged);
    _controller.dispose();
    super.dispose();
  }
}
