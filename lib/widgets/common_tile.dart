
import 'package:basic_animation/basic_animation/rotation_animation.dart';
import 'package:basic_animation/constants.dart';
import 'package:flutter/material.dart';

class CommonTile extends StatefulWidget {
  final AnimationType type;
  final String title;
   CommonTile({super.key, required this.type, required this.title});

  @override
  State<CommonTile> createState() => _CommonTileState();
}

class _CommonTileState extends State<CommonTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => customTap(widget.type),
      title: const Text("Rotation Animation"),
      style: ListTileStyle.list,
      dense: true,
      contentPadding: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    
      );
  }


  customTap(AnimationType type){
    switch (type){
      case AnimationType.ROTATION:
        Navigator.push(context, MaterialPageRoute(builder: (context) => RotationAnimation()));
        break;
    }
  }

}