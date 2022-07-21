

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Helo extends StatefulWidget {
  const Helo({Key? key}) : super(key: key);

  @override
  State<Helo> createState() => _HeloState();
}

class _HeloState extends State<Helo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(readString),
        leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: (){
          context.pop();
        },),

      ),
      body: Center(child: Text("next page"),),);
  }
}
