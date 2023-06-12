import 'package:flutter/material.dart';
import 'package:flutter_live_test_2/shoping_item_tile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("My Shopping List"),
            toolbarHeight: 60,
            actions: [
              IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.green,
                            content: Text("Cart is empty")));
                  },
                  icon: const Icon(Icons.card_giftcard))
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            children:   const [
              ShopingItemTile(icon:Icons.shopping_basket,text: "Apple",),
              ShopingItemTile(icon:Icons.shopping_basket,text: "Banana",),
              ShopingItemTile(icon:Icons.shopping_basket,text: "Milk",),
              ShopingItemTile(icon:Icons.shopping_basket,text: "Egg",),
              ShopingItemTile(icon:Icons.shopping_basket,text: "Bread",),
              ShopingItemTile(icon:Icons.shopping_basket,text: "Orange",),

            ],
          )),
    );
  }
}


