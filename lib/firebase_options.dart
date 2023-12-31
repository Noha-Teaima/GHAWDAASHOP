// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCDRZgxkAGwq7PMtUko2WBdQzIuL8o_R_w',
    appId: '1:389642588846:web:c9f24fed8fc67a8292d33f',
    messagingSenderId: '389642588846',
    projectId: 'ghawdashop',
    authDomain: 'ghawdashop.firebaseapp.com',
    storageBucket: 'ghawdashop.appspot.com',
    measurementId: 'G-QR9TCSH6QE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6YvIU5p_gbjvEMtTFy4P7coh4tWjT1DQ',
    appId: '1:389642588846:android:5b77eae81e6cab8892d33f',
    messagingSenderId: '389642588846',
    projectId: 'ghawdashop',
    storageBucket: 'ghawdashop.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCASAxn0bzUqwDjz6S_HUA84GZIAaefjro',
    appId: '1:389642588846:ios:9bd74a3958ff7bca92d33f',
    messagingSenderId: '389642588846',
    projectId: 'ghawdashop',
    storageBucket: 'ghawdashop.appspot.com',
    iosBundleId: 'com.example.testeco',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCASAxn0bzUqwDjz6S_HUA84GZIAaefjro',
    appId: '1:389642588846:ios:4b3c5d1c376043ff92d33f',
    messagingSenderId: '389642588846',
    projectId: 'ghawdashop',
    storageBucket: 'ghawdashop.appspot.com',
    iosBundleId: 'com.example.testeco.RunnerTests',
  );
}
