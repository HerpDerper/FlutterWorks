import 'package:flutter_application_1/domain/entity/orderEntity.dart';

class Order extends OrderEntity {
  late int id;
  final int employeeId;
  final int productId;
  final String date;
  final int count;

  Order({
    required this.employeeId,
    required this.productId,
    required this.date,
    required this.count,
  }) : super(
          employeeId: employeeId,
          productId: productId,
          date: date,
          count: count,
        );

  Map<String, dynamic> toMap() {
    return {
      'employeeId': employeeId,
      'productId': productId,
      'date': date,
      'count': count,
    };
  }

  factory Order.toFromMap(Map<String, dynamic> json) {
    return Order(
      employeeId: json['employeeId'],
      productId: json['productId'],
      date: json['date'],
      count: json['count'],
    );
  }
}
