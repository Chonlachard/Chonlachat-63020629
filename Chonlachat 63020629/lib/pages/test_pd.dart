import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text('fff'),
          subtitle: Text('ss'),
          value: isChecked,
          onChanged: (value) {
            setState(() => isChecked = value!);
          },
        ),
      ),
    );
  }
}
