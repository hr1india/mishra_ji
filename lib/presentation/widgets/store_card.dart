import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final String time;
  final String image;
  final String price;
  final String shopName;
  const StoreCard(
      {super.key,
      required this.time,
      required this.price,
      required this.image,
      required this.shopName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            scale: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              shopName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Container(
            width: 190,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Icon(Icons.alarm),
                Text(time),
                const SizedBox(width: 30),
                const Icon(Icons.pedal_bike),
                Text("  INR $price"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
