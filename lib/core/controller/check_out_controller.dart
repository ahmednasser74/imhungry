import 'package:get/get.dart';
import 'package:iam_hungry2/features/cart/data/model/cart/cart_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu/menu_model.dart';

class CheckOutController extends GetxController {
  CartModel _cart = CartModel(menus: []);

  set addMenuItem(MenuModel menuItem) {
    _cart.menus.add(menuItem);
    _setTotalPrice();
  }

  int get getMenuLength => _cart.menus.length;

  List<MenuModel> get getMenuItems => _cart.menus;

  double get getSubtotalPrice => _cart.subTotal;

  double get getTax => _cart.tax;

  double get getTotalPrice => _cart.total;

  double getTotalWithoutTax() {
    return _cart.menus.isNotEmpty
        ? _cart.menus.map((e) => e.totalPrice).reduce((e1, e2) => e1 + e2)
        : 0;
  }

  @override
  void onInit() {
    super.onInit();
  }

  void _setTotalPrice() {
    final subTotal = getTotalWithoutTax();
    final tax = subTotal * 14 / 100;
    final total = subTotal + tax;
    _cart = _cart.copyWith(subTotal: subTotal, tax: tax, total: total);
    update();
  }

  void incrementQuantity(int index) {
    final menuItem = _cart.menus.elementAt(index);
    final quantity = menuItem.quantity;
    final updateQuantity = quantity + 1;
    final total = (menuItem.totalAdds + menuItem.price) * updateQuantity;
    _cart.menus.replaceRange(
      index,
      index + 1,
      [menuItem.copyWith(quantity: updateQuantity, totalPrice: total)],
    );
    _setTotalPrice();
    update();
  }

  void decrementQuantity(int index) {
    final menuItem = _cart.menus.elementAt(index);
    final quantity = menuItem.quantity;
    final updateQuantity = quantity - 1;
    final total = (menuItem.totalAdds + menuItem.price) * updateQuantity;
    _cart.menus.replaceRange(
      index,
      index + 1,
      [menuItem.copyWith(quantity: updateQuantity, totalPrice: total)],
    );
    _setTotalPrice();
    update();
  }

  void deleteItem(MenuModel menuItem) {
    try {
      _cart.menus.remove(menuItem);
      _setTotalPrice();
    } catch (e) {
      print('deleteException $e');
    }
    update();
  }
}
