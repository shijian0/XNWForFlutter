import 'dart:math';

import 'package:flutter/material.dart';

class ListGrideSliverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 10, mainAxisSpacing: 10, maxCrossAxisExtent: 300),
      itemBuilder: (context, index) {
        return Container(
          color: Color.fromARGB(255, Random().nextInt(256),
              Random().nextInt(256), Random().nextInt(256)),
        );
      },
    );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 8),
    //   child: GridView(
    //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //         mainAxisSpacing: 10,
    //         crossAxisSpacing: 10,
    //         maxCrossAxisExtent: 200,
    //         childAspectRatio: 1.0),
    //     children: List.generate(100, (index) {
    //       return Container(
    //         color: Color.fromARGB(255, Random().nextInt(256),
    //             Random().nextInt(256), Random().nextInt(256)),
    //       );
    //     }),
    //   ),
    // );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 8),
    //   child: GridView(
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 3,
    //         childAspectRatio: 1.5,
    //         mainAxisSpacing: 8,
    //         crossAxisSpacing: 8),
    //     children: List.generate(100, (index) {
    //       return Container(
    //         color: Color.fromARGB(255, Random().nextInt(256),
    //             Random().nextInt(256), Random().nextInt(256)),
    //       );
    //     }),
    //   ),
    // );
    // return ListView.separated(

    //     itemBuilder: (context, index) {
    //       return Text("index:${index + 1}");
    //     },
    //     separatorBuilder: (context, index) {
    //       return Divider(
    //         color: Colors.red,
    //       );
    //     },

    //     itemCount: 100);
    // return ListView.builder(
    //   itemCount: 100,
    //   itemExtent: 60,
    //   itemBuilder: (context, index) {
    //     return Text("index:${index + 1}");
    //   },
    // );
    // return ListView(
    //   itemExtent: 100,
    //   children: List.generate(100, (index) {
    //     return ListTile(
    //       leading: Icon(Icons.person),
    //       trailing: Icon(Icons.delete),
    //       title: Text("person:${index + 1}"),
    //       subtitle: Text("subTitle"),
    //     );
    //   }),
    // );
  }
}
