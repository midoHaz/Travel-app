import 'package:flutter/material.dart';
import 'package:travel_app/Logining/LoginScreen.dart';
import 'package:travel_app/Logining/SignUp.dart';
import 'package:travel_app/shared/components.dart';
class StartScreen extends  StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:
            [
             const SizedBox(
                height: 50.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:const  Icon(Icons.arrow_back_ios,
                    color: Colors.orangeAccent,
                  ),),
                  const SizedBox(
                    width: 40,
                  ),
                  Image.asset('assets/images/photo.png'),
                ],
              ),
              Image.asset('assets/images/walking.png'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'A product suitable for people with special needs (deal , color blindness , visual impairment , muscular dystrophy) and illiterates',
                textAlign: TextAlign.center,
                maxLines: 4,
                style: TextStyle(
                  fontSize: 20,
                  color:Colors.orangeAccent,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined, color: Colors.orangeAccent, size: 15.0,)),

                    const SizedBox(width: 1.0,),
                    IconButton(onPressed: () {},
                        icon: const Icon(
                          Icons.circle_outlined, color:Colors.orangeAccent,
                          size: 15.0,)),
                    const SizedBox(width: 1.0,),
                    IconButton(onPressed: () {},
                        icon: const Icon(
                          Icons.circle, color:Colors.orangeAccent,
                          size: 15.0,)),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              defaultaButton(
                  width: 200,
                  backGround:Colors.orangeAccent,
                  function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>project2()));
                  },
                  text: 'Sign Up',
                colorText: Colors.white,
                radius: 15,
                textSize: 23,
              ),
              const SizedBox(
                height: 2,
              ),
               TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreenTravel()));
               }, child: const Text (
                 'LogIn',
                 style: TextStyle(
                     fontSize: 16,
                     color:Colors.orangeAccent,
                     decoration: TextDecoration.underline
                 ),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
