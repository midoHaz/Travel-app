import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class project extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset('assets/images/clar.png', height: 350.0,width: 500.0,),
              const SizedBox(height: 50,),

              const Text(

                'Be the Reviewer and share with people your good experience of any place you visited',
                textAlign: TextAlign.center,
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.orange,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.circle,color: Colors.orange,size: 20.0,)),

                      const SizedBox(width: 1.0,),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,color: Colors.orange,size: 20.0,)),
                      const SizedBox(width: 1.0,),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined,color: Colors.orange,size: 20.0,)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 130.0,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Skip',textAlign: TextAlign.start,

                      style:TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.orange,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ) ,
                    ),
                    const SizedBox(width: 140.0,),

                    Container(
                      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(20.0,),),
                      padding: const EdgeInsets.only(left: 10, right:10),

                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,

                        ),
                        onPressed: () {
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
