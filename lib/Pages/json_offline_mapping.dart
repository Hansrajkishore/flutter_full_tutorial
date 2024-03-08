import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: "Json Mapping".text.makeCentered(),
          backgroundColor: Vx.teal400,
        ),
        drawer: Drawer(),
        body: Container(
          child: Center(
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/files/person.json'),
              builder: (context, snapshot) {
                var mydata = json.decode(snapshot.data.toString());
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 1.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          "Name-> ${mydata[index]['name']}".text.make(),
                          "Relation-> ${mydata[index]['relation']}".text.make(),
                          "roll-> ${mydata[index]['roll']}".text.make(),
                          "age-> ${mydata[index]['age']}".text.make(),
                          "gender-> ${mydata[index]['gender']}".text.make(),
                          "address-> ${mydata[index]['address']}".text.make(),
                        ],
                      ),
                    );
                  },
                  itemCount: mydata == null ? 0 : mydata.length,
                );
              },
            ),
          ),
        ));
  }
}
