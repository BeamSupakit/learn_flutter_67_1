import 'package:flutter/material.dart';
import 'package:learn_flutter_67_1/model/person.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: personList.length,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                personList[index].name,
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              Text(
                personList[index].age.toString(),
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
              Text(
                personList[index].job,
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ],
          ),
        );
      },
    );
  }
}
