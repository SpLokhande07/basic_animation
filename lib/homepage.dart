import 'dart:math';

import 'package:basic_animation/basic_animation/rotation_animation.dart';
import 'package:basic_animation/constants.dart';
import 'package:basic_animation/widgets/common_tile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
      appBar: AppBar(title: Text("Animation"),),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Padding
        (
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView (
          shrinkWrap: true,
          children: [
          CommonTile(type: AnimationType.ROTATION, title: "Rotation Animation",),
          
          ],
          
          ),
        ),
      ),
   );
  }
}