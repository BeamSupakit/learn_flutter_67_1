import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List data = ["สมชาย", "สมหญิง", "สมศรี", "สมปอง", "สมจิตร"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 231, 2, 2),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.all(40),
          child: Text(
            data[index],
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        );
      },
    );
  }
}
