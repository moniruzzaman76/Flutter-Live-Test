import 'package:flutter/material.dart';

class ShopingItemTile extends StatelessWidget {
  final IconData icon;
  final String text;
  const ShopingItemTile({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 35,),
      title: Text(text, style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.w700),
      ),
    );
  }
}