import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(Flutter());
}

class Flutter extends StatelessWidget {
  const Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
          color: Vx.black,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Hello Flutter".text.bold.white.xl.make(),
              "From\nHansraj Kishore".text.bold.white.make()
            ],
          ))),
    );
  }
}
