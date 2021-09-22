import 'discount_model.dart';

class DiscountsModel {
  late List<DiscountModel> discountList;

  DiscountsModel({required this.discountList});

  factory DiscountsModel.fromJson(Map<String, dynamic> jsonData) {
    return DiscountsModel(
      discountList: jsonData['discount_list'],
    );
  }
}
