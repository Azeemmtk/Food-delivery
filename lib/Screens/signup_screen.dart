import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/Screens/sign%20in%20screen.dart';
import 'package:food/utils/const.dart';

import '../service/firebase_service.dart';
import '../widgets/cusom text.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final Firebaseservices _service = Firebaseservices();

  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaycolor,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 140,
                ),
                const Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const Center(
                  child: Text(
                    'Let’s Create Account Together',
                    style: TextStyle(color: Color(0xFF707B81)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Your Name',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Customtextfield(
                  hint: 'Enter name',
                  visibility: false,
                  controlls: _namecontroller,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Email Address',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Customtextfield(
                  hint: 'Enter email',
                  visibility: false,
                  controlls: _emailcontroller,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Customtextfield(
                  hint: 'Enter password',
                  visibility: true,
                  controlls: _passwordcontroller,
                  suffix: IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.eye_slash)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5B9EE1)),
                      onPressed: () {
                        _service.signupwithemailpasswd(
                            email: _emailcontroller.text,
                            password: _passwordcontroller.text,
                            contxt: context);
                        if (_formkey.currentState?.validate() ?? false) {}
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/images/google.png')),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Sign in with google',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signin(),
                              ));
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
