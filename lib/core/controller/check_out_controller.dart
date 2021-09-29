import 'package:get/get.dart';
import 'package:iam_hungry2/features/cart/data/model/cart/cart_model.dart';
import 'package:iam_hungry2/features/iam_hungry/data/models/menu/menu_model.dart';

class CheckOutController extends GetxController {
  CartModel _cart = CartModel(items: []);

  set addMenuItem(MenuModel menuItem) {
    final double totalPrice =
        (menuItem.quantity * menuItem.price) + menuItem.totalAdds;
    menuItem = menuItem.copyWith(totalPrice: totalPrice);
    _cart.items.add(menuItem);
    setTotalPrice();
  }

  int get getMenuLength => _cart.items.length;

  List<MenuModel> get getMenuItems => _cart.items;

  double get getSubtotalPrice => _cart.subTotal;

  double get getTax => _cart.tax;

  double get getTotalPrice => _cart.total;

  double getTotalWithoutTax() {
    return _cart.items.isNotEmpty
        ? _cart.items.map((e) => e.totalPrice).reduce((e1, e2) => e1 + e2)
        : 0;
  }

  @override
  void onInit() {
    super.onInit();
  }

  void setTotalPrice() {
    final subTotal = getTotalWithoutTax();
    final tax = subTotal * 14 / 100;
    final total = subTotal + tax;
    _cart = _cart.copyWith(subTotal: subTotal, tax: tax, total: total);
    update();
  }

  void incrementQuantity(int index) {
    final menuItem = _cart.items.elementAt(index);
    final quantity = menuItem.quantity;
    final updateQuantity = quantity + 1;
    final itemTotalPrice =
        (menuItem.totalAdds + menuItem.price) * updateQuantity;
    _cart.items.replaceRange(
      index,
      index + 1,
      [menuItem.copyWith(quantity: updateQuantity, totalPrice: itemTotalPrice)],
    );
    setTotalPrice();
    update();
  }

  void decrementQuantity(int index) {
    final menuItem = _cart.items.elementAt(index);
    final quantity = menuItem.quantity;
    final updateQuantity = quantity - 1;
    final total = (menuItem.totalAdds + menuItem.price) * updateQuantity;
    _cart.items.replaceRange(
      index,
      index + 1,
      [menuItem.copyWith(quantity: updateQuantity, totalPrice: total)],
    );
    setTotalPrice();
    update();
  }

  void deleteItem(MenuModel menuItem) {
    try {
      _cart.items.remove(menuItem);
      if (_cart.items.isNotEmpty)
        setTotalPrice();
      else {
        Get.back();
        update();
      }
    } catch (e) {
      print('deleteException $e');
    }
  }
}
