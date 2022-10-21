import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Logining/LoginScreen.dart';
import 'package:travel_app/shared/components.dart';

import '../countery.dart';

class project2 extends StatelessWidget {
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: FormKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(
                height: 80.0,
              ),
              const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight:FontWeight.w900,
                  fontSize: 30.0,
                ),
              ),
              const Text(
                'With Us',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.left,
              ),
            const SizedBox(
              height: 40.0,
            ),
            const Center(
              child: Text(
                'sign up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.orangeAccent,
                  fontSize: 25.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
                defaultFormFieldo(
                label: 'Name',
                validate: (value) {
                  if (value.isEmpty) {
                    return "name can not be empty";
                  }
                  return null;
                },
                control: nameController,
                type: TextInputType.text,
                hint: 'Enter your name '),
            const SizedBox(
              height: 20.0,
            ),
                defaultFormFieldo(
                label: 'Phone',
                validate: (value) {
                  if (value.isEmpty) {
                    return "phone can not be empty";
                  }
                  return null;
                },
                control: phoneController,
                type: TextInputType.phone,
                hint: 'Enter your phone '),
            const SizedBox(
              height: 20.0,
            ),
                defaultFormFieldo(
                label: 'Email',
                validate: (value) {
                  if (value.isEmpty) {
                    return "email can not be empty";
                  }
                  return null;
                },
                control: emailController,
                type: TextInputType.emailAddress,
                hint: 'Enter your email '),
            const SizedBox(
              height: 20.0,
            ),
                defaultFormFieldo(
                label: 'password',
                validate: (value) {
                  if (value.isEmpty) {
                    return "password can not be empty";
                  }
                  return null;
                },
                control: passwordController,
                type: TextInputType.visiblePassword,
                hint: 'Enter your password ',
                isPassword: true),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: defaultoButton(
                  text: 'Sign up',
                  function: () {
                    if (FormKey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SelectCountry()));
                    }
                  }
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 2.0,
                  color: Colors.orangeAccent,
                ),
                const SizedBox(width: 5.0,),
                const Text('OR', style: TextStyle(
                    color: Colors.orangeAccent, fontSize: 15.0)),
                const SizedBox(width: 5.0,),
                Container(
                  width: 150,
                  height: 2.0,
                  color: Colors.orangeAccent,
                )
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/WhatsApp Image 2022-10-05 at 3.01.54 AM.jpeg',
                  width: 60.0, height: 60.0,),
                const SizedBox(width: 30.0,),
                const Icon(
                    Icons.facebook, color: Colors.orangeAccent, size: 60.0),

              ],
            )
            ,
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account ?',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.orangeAccent
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>LoginScreenTravel()));
                      }, child: const Text('log in ', style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 18.0,
                      decoration: TextDecoration.underline
                  ),)),
                ],
              ),
            ),
            ],
        ),
          ),
      ),
      ),
    );
  }
}
