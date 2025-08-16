import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Row(
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset("assets/images/CUTE-KITTY.jpg", width: 200, height: 200),
        const SizedBox(height: 20),
        Image.network(
          "https://www.central.co.th/e-shopping/wp-content/uploads/2020/12/CUTE-KITTY.jpg",
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
