import 'package:flutter/material.dart';

class ListItemNew extends StatelessWidget {
  final String title;
  final String content;
  final String dialogContent;
  final Function function;

  const ListItemNew({
    super.key,
    required this.title,
    required this.content,
    required this.dialogContent,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 200, 197, 177),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: const Icon(Icons.home),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(content),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () => function('Thông báo', 'Bạn chọn $dialogContent'),
      ),
    );
  }
}
