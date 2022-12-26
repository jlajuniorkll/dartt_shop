import 'package:dartt_shop/src/config/custom_colors.dart';
import 'package:dartt_shop/src/models/item_model.dart';
import 'package:dartt_shop/src/pages/base/controller/navigation_controller.dart';
import 'package:dartt_shop/src/pages/commons/quantity_widget.dart';
import 'package:dartt_shop/src/services/utils_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key, required this.item}) : super(key: key);

  final ItemModel item;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final UtilsServices utilsServices = UtilsServices();

  int cartItemQuantity = 1;

  final navigationController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Hero(
                      tag: widget.item.imgUrl,
                      child: Image.network(widget.item.imgUrl))),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(32.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600, offset: const Offset(0, 2))
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.item.itemName,
                            style: const TextStyle(
                                fontSize: 27.0, fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        QuantityWidget(
                          suffixText: widget.item.unit,
                          value: cartItemQuantity,
                          result: (quantity) {
                            setState(() {
                              cartItemQuantity = quantity;
                            });
                          },
                        ),
                      ],
                    ),
                    Text(utilsServices.priceToCurrency(widget.item.price),
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor,
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: SingleChildScrollView(
                            child: Text(
                          widget.item.description,
                          style: const TextStyle(height: 1.5),
                        )),
                      ),
                    ),
                    SizedBox(
                        height: 55,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                          onPressed: () {
                            Get.back();
                            navigationController
                                .navigatePageView(NavigationTabs.cart);
                          },
                          label: const Text(
                            "Adicionar ao carrinho",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              )),
            ],
          ),
          Positioned(
              left: 10,
              top: 10,
              child: SafeArea(
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios)))),
        ],
      ),
    );
  }
}
