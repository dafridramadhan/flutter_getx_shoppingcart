import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller_cart.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.c,
    required this.item,
  }) : super(key: key);

  final ControllerCart c;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          item,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.amber,
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(25),
          ),
          child: IconButton(
            onPressed: () {
              if (item == 'Books') {
                c.incrementBooks();
              } else if (item == 'Comics') {
                c.incrementComics();
              }
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Obx(
          () => Text(
            (item == 'Books') ? c.books.toString() : c.comics.toString(),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(25),
          ),
          child: IconButton(
            onPressed: () {
              if (item == 'Books') {
                c.decrementBooks();
              } else if (item == 'Comics') {
                c.decrementComics();
              }
            },
            icon: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
