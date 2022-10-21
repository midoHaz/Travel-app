import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/startup/SecondScreen.dart';
import 'package:travel_app/Logining/LoginScreen.dart';
import 'package:travel_app/shared/components.dart';

class FirstScreen extends StatefulWidget {

  @override
  State<FirstScreen> createState() => _projectState();
}

class _projectState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Image.asset(
              'assets/images/clar.png', height: 350.0, width: 500.0,),
            const SizedBox(height: 50,),

            const Text(

              'Be the Reviewer and share with people your good experience of any place you visited',
              textAlign: TextAlign.center,
              style: TextStyle(

                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color:Colors.orangeAccent,
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {},
                      icon: const Icon(
                        Icons.circle, color: Colors.orangeAccent, size: 15.0,)),

                  const SizedBox(width: 1.0,),
                  IconButton(onPressed: () {},
                      icon: const Icon(
                        Icons.circle_outlined, color:Colors.orangeAccent,
                        size: 15.0,)),
                  const SizedBox(width: 1.0,),
                  IconButton(onPressed: () {},
                      icon: const Icon(
                        Icons.circle_outlined, color:Colors.orangeAccent,
                        size: 15.0,)),
                ],
              ),
            ),
            const SizedBox(height: 50.0,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreenTravel()));
                  },
                      child: const Text('Skip',style: TextStyle(
                          color: Colors.orangeAccent,fontSize: 20.0,decoration: TextDecoration.underline
                      ),)),
                  defaultButton(
                      icon: Icons.arrow_forward,width: 100.0,
                      function: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      }
                  )
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}
