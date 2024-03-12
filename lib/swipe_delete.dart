import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SwipeDelete extends StatelessWidget {
  final List<String> items =
      new List.generate(30, (index) => "Item No${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Swipe and Pull".text.makeCentered(),
        backgroundColor: Vx.indigo500,
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(items[index]),
              secondaryBackground: Container(
                color: Vx.red800,
                child: Icon(CupertinoIcons.delete),
              ),
              onDismissed: (direction) {
                items.removeAt(index);

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: "Item No${index} is Dissmissed".text.make()));
              },
              background: Container(
                color: Vx.red400,
                child: Icon(Icons.delete),
              ),
              child: ListTile(
                title: "${items[index]}".text.make(),
              ),
            );
          },
        ),
      ),
    );
  }
}
