import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class project3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pyra.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 55.0, left:20),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 24.0,
                  child: Icon(Icons.wrap_text),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 55.0, left:290),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/12/15/05/43/starry-night-1093721_640.jpg'),
                  radius: 24.0,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 150, left:20),
            child: Column(children: [

              Container(
                child: const Text(
                  'Welcome to',
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0),
                ),
              ),
              Container(
                child: const Text(
                  'you in egypt',
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0),
                ),
              ),
              const SizedBox(height: 30.0,),

              const Text('Swipw up and ',style: TextStyle(color: Colors.white,
                  fontSize: 30.0),),
              const Text('choose the province',style: TextStyle(color: Colors.white,

                  fontSize: 30.0),),

            ],),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Transform.rotate(
                  angle: 270 * pi/180,
                  child: const Icon(Icons.double_arrow_sharp,color: Colors.white,size: 60.0,),

                ),
                const SizedBox(height: 30.0,),// Icon(Icons.double_arrow_sharp,transform: Matrix4.rotationY(math.pi), size: 40.0,color: Colors.white,),
                // Icon(Icons.keyboard_arrow_up_outlined, size: 40.0,color: Colors.white,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

