import 'package:flutter/material.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (itemBuilder, index) {
          return Text("Item $index");
        },
        itemCount: 7,
        separatorBuilder: (separatorBuilder, index) {
          // return Text("-------------$index------------");
          return const Divider(
            thickness: 6,
            color: Colors.red,
          );
        }
      ),
    );
  }
}
