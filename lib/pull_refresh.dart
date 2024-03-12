import 'dart:math';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PullRefresh extends StatefulWidget {
  const PullRefresh({super.key});

  @override
  State<PullRefresh> createState() => _PullRefreshState();
}

class _PullRefreshState extends State<PullRefresh> {
  var random, list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    random = Random();

    list = List.generate(random.nextInt(50), (index) => "Item ${index}");
  }

  Future<Null> refreshList() async {
    setState(() {
      list = List.generate(random.nextInt(50), (index) => "Item ${index}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Pull to Refresh".text.makeCentered(),
        backgroundColor: Vx.teal400,
      ),
      body: RefreshIndicator(
        displacement: 20.5,
        // triggerMode: RefreshIndicatorTriggerMode.anywhere,
        backgroundColor: Vx.blue300,
        edgeOffset: 5,

        strokeWidth: 2.5,
        color: Vx.red500,
        onRefresh: refreshList,
        child: ListView.builder(
          itemCount: list?.length,
          itemBuilder: (context, index) => ListTile(
            title: "list${index}".text.make(),
          ),
        ),
      ),
    );
  }
}
