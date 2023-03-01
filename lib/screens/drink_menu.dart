import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/drink_item.dart';

class DrinkMenu extends StatelessWidget {
  const DrinkMenu({Key? key}) : super(key: key);
  final List listDrinks = drinks;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.9, 16.0, 0.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Bebidas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Caveat",
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return DrinkItem(
                    imageURI: listDrinks[index]["image"],
                    itemTitle: listDrinks[index]["name"],
                    itemPrice: listDrinks[index]["price"]);
              }, childCount: listDrinks.length),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 158 / 194),
            )
          ],
        ));
  }
}
