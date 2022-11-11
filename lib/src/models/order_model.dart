import 'package:dartt_shop/src/models/cart_itemmodel.dart';

class OrderModel {
  String id;
  DateTime createdDateTime;
  DateTime overdueDateTime;
  List<CartItemModel> items;
  String status;
  String copyAndPaste;
  double doubleTotal;

  OrderModel(
      {required this.id,
      required this.createdDateTime,
      required this.overdueDateTime,
      required this.items,
      required this.status,
      required this.copyAndPaste,
      required this.doubleTotal});
}
