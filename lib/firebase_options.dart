// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDkxtmJarNVNtAz41TH9NK7xvvu2kv6r3E',
    appId: '1:13260416099:web:68fc91166512e4be870456',
    messagingSenderId: '13260416099',
    projectId: 'food-delivery-42a88',
    authDomain: 'food-delivery-42a88.firebaseapp.com',
    storageBucket: 'food-delivery-42a88.appspot.com',
    measurementId: 'G-6KPVN6B35X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3CBpEO72Mz28BXRj3hRDZvZxkff71Oe4',
    appId: '1:13260416099:android:e7220c59ffafb27f870456',
    messagingSenderId: '13260416099',
    projectId: 'food-delivery-42a88',
    storageBucket: 'food-delivery-42a88.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDh8Hpf_sR77WLxBnAMjByl5yB_Xct6odE',
    appId: '1:13260416099:ios:d5d8ed1826440a23870456',
    messagingSenderId: '13260416099',
    projectId: 'food-delivery-42a88',
    storageBucket: 'food-delivery-42a88.appspot.com',
    iosBundleId: 'com.example.food',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDh8Hpf_sR77WLxBnAMjByl5yB_Xct6odE',
    appId: '1:13260416099:ios:d5d8ed1826440a23870456',
    messagingSenderId: '13260416099',
    projectId: 'food-delivery-42a88',
    storageBucket: 'food-delivery-42a88.appspot.com',
    iosBundleId: 'com.example.food',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDkxtmJarNVNtAz41TH9NK7xvvu2kv6r3E',
    appId: '1:13260416099:web:ca4c27d8206bcf3e870456',
    messagingSenderId: '13260416099',
    projectId: 'food-delivery-42a88',
    authDomain: 'food-delivery-42a88.firebaseapp.com',
    storageBucket: 'food-delivery-42a88.appspot.com',
    measurementId: 'G-DTNQ3V5JT4',
  );
}
