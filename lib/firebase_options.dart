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
    apiKey: 'AIzaSyAP9q93gU8VyPhEc9msRWO7vEEGvaUKShc',
    appId: '1:598057428744:web:aa3b9bdf2bddeacdfdaebd',
    messagingSenderId: '598057428744',
    projectId: 'fooddelivery-c40f5',
    authDomain: 'fooddelivery-c40f5.firebaseapp.com',
    storageBucket: 'fooddelivery-c40f5.appspot.com',
    measurementId: 'G-L1H4J6X23Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7XzdbGCZMLRCoa5m2pp1YDq9wjLNrE2o',
    appId: '1:598057428744:android:bb4ab0b5f647cb3afdaebd',
    messagingSenderId: '598057428744',
    projectId: 'fooddelivery-c40f5',
    storageBucket: 'fooddelivery-c40f5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAlfio-_pqwJhd2YAgYC4W6XwMhZLy9ijY',
    appId: '1:598057428744:ios:c92a37b5d85bc84afdaebd',
    messagingSenderId: '598057428744',
    projectId: 'fooddelivery-c40f5',
    storageBucket: 'fooddelivery-c40f5.appspot.com',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAlfio-_pqwJhd2YAgYC4W6XwMhZLy9ijY',
    appId: '1:598057428744:ios:c92a37b5d85bc84afdaebd',
    messagingSenderId: '598057428744',
    projectId: 'fooddelivery-c40f5',
    storageBucket: 'fooddelivery-c40f5.appspot.com',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAP9q93gU8VyPhEc9msRWO7vEEGvaUKShc',
    appId: '1:598057428744:web:4f62941f55b1dc46fdaebd',
    messagingSenderId: '598057428744',
    projectId: 'fooddelivery-c40f5',
    authDomain: 'fooddelivery-c40f5.firebaseapp.com',
    storageBucket: 'fooddelivery-c40f5.appspot.com',
    measurementId: 'G-GCB2LKB038',
  );
}