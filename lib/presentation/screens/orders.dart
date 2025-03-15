import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/past_orders_widget.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/prev_btn.dart';

class Orders extends StatelessWidget{

  List<String> sampleImages = [
  "assets/images/mango.png",
  "assets/images/avocado.png",
  "assets/images/cauliflower.png"
];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: PrevBtn(),
        ),
        title: Text(
          "Orders",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            PastOrdersWidget(
            imageUrls: sampleImages,
            price: 167.7,
            status: "On Process",
            statusColor: Colors.yellow,
            ),
            PastOrdersWidget(
            imageUrls: sampleImages,
            price: 167.7,
            status: "Delivered",
            statusColor: Colors.green,
            deliveryDate: "18 Feb 2025",
            ),
            PastOrdersWidget(
            imageUrls: sampleImages,
            price: 167.7,
            status: "On Process",
            statusColor: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}