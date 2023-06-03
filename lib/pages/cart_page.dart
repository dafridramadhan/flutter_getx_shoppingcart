import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/total_page.dart';
import '../controllers/controller_cart.dart';
import '../widgets/cart_item.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final ControllerCart c = Get.put(ControllerCart());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CartItem(
              c: c,
              item: "Books",
            ),
            const SizedBox(
              height: 20,
            ),
            CartItem(
              c: c,
              item: "Comics",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: ()=> Get.to(()=> TotalPage()),
                    child: const Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
