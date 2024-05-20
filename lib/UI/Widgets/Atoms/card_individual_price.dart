import 'package:flutter/material.dart';

Row buildIndividualPriceCard(int index) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(chargeslissst[index]['title']!),
      Text("₹${chargeslissst[index]['price']!}"),
    ],
  );
}

const chargeslissst = [
  {"title": "Item Total", "price": "643"},
  {"title": "Delivery Charge", "price": "16"},
  {"title": "Handling Charge", "price": "2"},
  {"title": "Late Night Convenience Charge", "price": "10"},
];
