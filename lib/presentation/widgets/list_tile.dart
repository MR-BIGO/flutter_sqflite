import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  ListItem({Key? key, required this.name, required this.age, required this.id})
      : super(key: key);

  late String name;
  late int id;
  late int age;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: ListTile(
        leading: Text(
          id.toString(),
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        title: Text(
          name,
          style: const TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text(
          age.toString(),
          style: const TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
