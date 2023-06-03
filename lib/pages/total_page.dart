import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller_cart.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});

  final ControllerCart c = Get.put(ControllerCart());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Items",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue.shade900,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
              () => Text(
                c.sum.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
                onPressed: () => Get.back(),
                child: const Text(
                  "Go Back",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
