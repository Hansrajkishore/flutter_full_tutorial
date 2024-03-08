import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Drawer".text.bold.black.makeCentered(),
      ),
      body: "The Drawer".text.xl3.bold.makeCentered(),
      drawer: Drawer(
        backgroundColor: Vx.teal100,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/toon.jpg'),
                ),
                accountName: "Hansraj Kishore".text.bold.make(),
                accountEmail: "hansrajkishore35@gmail.com".text.make()),
            Divider(
              color: Vx.red200,
              thickness: 5,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: "Home".text.bold.make(),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: "Home".text.makeCentered()));
              },
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: "Profile".text.bold.make(),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: "Profile".text.makeCentered()));
              },
            )
          ],
        ),
      ),
    );
  }
}
