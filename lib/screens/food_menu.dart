import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/food_item.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({Key? key}) : super(key: key);

  final List listFood = comidas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Text(
              "Menu",
              style: TextStyle(
                fontFamily: "Caveat",
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return FoodItem(
                itemTitle: listFood[index]["name"],
                itemPrice: listFood[index]["price"],
                imageURI: listFood[index]["image"],
              );
            }, childCount: listFood.length),
          ),
        ],
      ),
    );
  }
}
