import 'package:flutter/material.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skudgs'),
      ),
      body: Column(children: [
        ElevatedButton(onPressed: () {}, child: Text('afkut',),),
      ],),
    );
  }
}
