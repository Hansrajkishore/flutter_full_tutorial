import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExpandList extends StatelessWidget {
  var list = List.generate(5, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Expandable List".text.makeCentered(),
        backgroundColor: Vx.green400,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ExpansionTile(
          title: "Header ${index + 1}".text.make(),
          children: list
              .map((e) => ListTile(
                    title: e.text.make(),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
