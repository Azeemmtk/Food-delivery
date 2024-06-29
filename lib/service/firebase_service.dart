import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food/Screens/home_screen.dart';
import 'package:food/utils/const.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../Screens/sign in screen.dart';

class Firebaseservices {
  Future<void> signupwithemailpasswd(
      {required String email,
      required String password,
      required BuildContext contxt}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => Signin(),
          ));

      ScaffoldMessenger.of(contxt)
          .showSnackBar(SnackBar(content: Text('Account created Succesfully')));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(contxt).showSnackBar(
          SnackBar(backgroundColor: maincolor, content: Text(e.message!)));
    } catch (e) {
      ScaffoldMessenger.of(contxt).showSnackBar(SnackBar(
          backgroundColor: maincolor, content: Text('Something went wrong')));
    }
  }

  Future<User?> signinwithemailpasswd(
      {required String email,
      required String password,
      required BuildContext contxt}) async {
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));

      return user.user!;
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(contxt).showSnackBar(
          SnackBar(backgroundColor: maincolor, content: Text(e.message!)));
    } catch (e) {
      ScaffoldMessenger.of(contxt).showSnackBar(SnackBar(
          backgroundColor: maincolor, content: Text('Something went wrong')));
    }
  }

  signinwithgoogle({required BuildContext contxt}) async {
    final GoogleSignIn _googlesignin = GoogleSignIn();
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googlesignin.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
        Navigator.push(
            contxt,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(contxt)
          .showSnackBar(SnackBar(content: Text(e.message!)));
    } catch (e) {
      ScaffoldMessenger.of(contxt)
          .showSnackBar(SnackBar(content: Text('Something went wrong')));
    }
  }
}
