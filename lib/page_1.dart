import 'dart:developer';

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // messge yan hozircha sms
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            //yonga slayt qilingandagi on tapni bilish uchun
            return NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  // if
                  if (notification.metrics.pixels != 0) {
                    log("qoy $index");
                  }
                  return true;
                },

                // SingleChildScrollView
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),

                  // sms container
                  child: SizedBox(
                    height: 40.0,
                    width: 200.0,
                    child: Container(
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text('assalomu aleykum $index'),
                    ),
                  ),
                ));
          }),
    );
  }
}
