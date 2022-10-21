import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel_app/Greece/GreeceHomeScreen.dart';

import '../shared/components.dart';

class WelcomeGreece extends StatelessWidget {
  const WelcomeGreece({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Stack(
              children:[
                Image.asset(
                  'assets/images/ancientgr.jpeg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                PhotoShadowSmStyle(),
              ] ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 55.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 24.0,
                    child: Icon(Icons.wrap_text),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 55.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/me.jpg'),
                    radius: 25,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 150, left:20),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: const [

                Text(
                  'Welcome to',
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                ),
                Text(
                  'you in Greece',
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0),
                ),
                SizedBox(height: 30.0,),

                Text('Swipe up and ',style: TextStyle(color: Colors.white,
                    fontSize: 30.0),textAlign: TextAlign.left,),
                Text('choose the province',style: TextStyle(color: Colors.white,

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
                    child:IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>GreeceHome()));
                    }, icon:const  Icon(Icons.double_arrow_sharp,color: Colors.white,size: 60.0,),)

                ),
                const SizedBox(height: 30.0,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
