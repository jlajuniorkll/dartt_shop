import 'package:dartt_shop/src/pages/orders/components/order_tile.dart';
import 'package:flutter/material.dart';
import 'package:dartt_shop/src/config/app_data.dart' as appdata;

class OrderTab extends StatelessWidget {
  const OrderTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pedidos"),
        ),
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, index) => OrderTile(
            order: appdata.orders[index],
          ),
          separatorBuilder: (_, index) => const SizedBox(height: 10),
          itemCount: appdata.orders.length,
        ));
  }
}
