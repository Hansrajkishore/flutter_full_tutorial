import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:velocity_x/velocity_x.dart';

class StickHead extends StatelessWidget {
  var list = List.generate(5, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: "Sticky Head List".text.makeCentered(),
          backgroundColor: Vx.green400,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => StickyHeader(
              header: Container(
                height: 40,
                child: "Header ${index + 1}".text.makeCentered(),
              ).p8(),
              content: Column(
                children: list
                    .map((e) => ListTile(
                          title: e.text.make(),
                        ))
                    .toList(),
              ).py8()),
        ));
  }
}
