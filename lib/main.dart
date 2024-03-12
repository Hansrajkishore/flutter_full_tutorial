import 'package:flutter/material.dart';
import 'package:flutter_full_tutorial/Expandable.dart';
import 'package:flutter_full_tutorial/stickHeader.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:flutter_full_tutorial/pull_refresh.dart';
// import 'package:flutter_full_tutorial/swipe_delete.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView_Update(),
  ));
}

// ignore: camel_case_types
class ListView_Update extends StatelessWidget {
  const ListView_Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "List View Advance".text.makeCentered(),
        backgroundColor: Vx.amber500,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExpandList(),
                      ));
                },
                child: "Expandable List".text.makeCentered()),
            ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(200, 50))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StickHead(),
                          ));
                    },
                    child: "Sticky Header List".text.makeCentered())
                .py32(),
          ],
        ),
      ),
    );
  }
}
