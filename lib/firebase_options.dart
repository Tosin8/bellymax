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
    apiKey: 'AIzaSyCNS5LkvwIHkNAcKPLoJrq_dPCeb6MNn7A',
    appId: '1:1097307852348:web:dd335eb72072fe2164fd39',
    messagingSenderId: '1097307852348',
    projectId: 'bellymax-def81',
    authDomain: 'bellymax-def81.firebaseapp.com',
    storageBucket: 'bellymax-def81.appspot.com',
    measurementId: 'G-69FWN6PQEF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQmi3jwYWA_VGA6TLhJXLzmxzf0255fbs',
    appId: '1:1097307852348:android:72c12902c6af447864fd39',
    messagingSenderId: '1097307852348',
    projectId: 'bellymax-def81',
    storageBucket: 'bellymax-def81.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnG2jHZ-NJttG3d-P5N5ZWo89h2Hvlz24',
    appId: '1:1097307852348:ios:7d8d1699dfe65e7464fd39',
    messagingSenderId: '1097307852348',
    projectId: 'bellymax-def81',
    storageBucket: 'bellymax-def81.appspot.com',
    iosBundleId: 'com.example.bellymax',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnG2jHZ-NJttG3d-P5N5ZWo89h2Hvlz24',
    appId: '1:1097307852348:ios:0b6cb6ebde62233b64fd39',
    messagingSenderId: '1097307852348',
    projectId: 'bellymax-def81',
    storageBucket: 'bellymax-def81.appspot.com',
    iosBundleId: 'com.example.bellymax.RunnerTests',
  );
}
