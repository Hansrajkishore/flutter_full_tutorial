import 'package:flutter/material.dart';
import 'package:flutter_full_tutorial/Pages/online_json.dart';
import 'package:flutter_full_tutorial/models/online_PostModel.dart';
import 'package:velocity_x/velocity_x.dart';

class JsonOnline extends StatefulWidget {
  const JsonOnline({super.key});

  @override
  State<JsonOnline> createState() => _JsonOnlineState();
}

class _JsonOnlineState extends State<JsonOnline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Vx.white),
          title: "Json Mapping Online".text.bold.white.makeCentered(),
          backgroundColor: Vx.teal800,
        ),
        drawer: Drawer(),
        body: FutureBuilder(
          future: getPosts(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(
                  color: Vx.red800,
                ),
              );
            } else {
              List<Product> product = snapshot.data;

              return ListView.builder(
                  itemCount: product.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        leading: Image.network(
                          product[index].thumbnail,
                          width: 100,
                          height: 100,
                        ),
                        title: "${product[index].title}".text.xl2.bold.make(),
                        subtitle: Row(
                          children: [
                            Expanded(
                                child: "${product[index].description}"
                                    .text
                                    .textStyle(context.captionStyle)
                                    .make()),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: "\$${product[index].price}"
                                  .text
                                  .bold
                                  .xl
                                  .make(),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            }
          },
        ));
  }
}
