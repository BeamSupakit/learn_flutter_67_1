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
        final person = personList[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: person.job.color, width: 2),
          ),
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          elevation: 3,
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                person.job.image,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              person.name,
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
            subtitle: Text(
              "${person.age} ปี • ${person.job.title}",
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("คุณเลือก ${person.name}")),
              );
            },
          ),
        );
      },
    );
  }
}
