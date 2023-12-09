

import 'dart:math';

import 'package:flutter/material.dart';

class RotationAnimation extends StatefulWidget {
  const RotationAnimation({super.key});

  @override
  State<RotationAnimation> createState() => _RotationAnimationState();
}

class _RotationAnimationState extends State<RotationAnimation> with SingleTickerProviderStateMixin{
 
 
  late AnimationController _controller;
late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1));
  _animation = Tween<double>(begin: 0, end: 2*pi).animate(_controller);
  _controller.repeat();
  
  }

@override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      AnimatedBuilder(
        animation: _animation,
        
        builder: (context, child) {
          return Transform
          (
            transform: Matrix4.identity()..rotateY(_animation.value),
            // origin: Offset(100, 100), // Always try not to use this
            alignment: Alignment.center,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple,
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              ),
          );
       
          }
      ),
      
      ),
    );
  }

}