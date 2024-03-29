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
    apiKey: 'AIzaSyCKk_YrFyxAG7e7abRGrbc0GeElO4Q9Gtg',
    appId: '1:948170723738:web:1663681a61b6e6f5b3aa23',
    messagingSenderId: '948170723738',
    projectId: 'testing-fad53',
    authDomain: 'testing-fad53.firebaseapp.com',
    storageBucket: 'testing-fad53.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAoe4MYS2wK-ejp2erM5VKeM7Sn-BoYEQ',
    appId: '1:948170723738:android:01f3e9fd3083c512b3aa23',
    messagingSenderId: '948170723738',
    projectId: 'testing-fad53',
    storageBucket: 'testing-fad53.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBii0SOO1sNhc0l95oqOV7YuuFahK3W4Yo',
    appId: '1:948170723738:ios:d8ff530929cd85a0b3aa23',
    messagingSenderId: '948170723738',
    projectId: 'testing-fad53',
    storageBucket: 'testing-fad53.appspot.com',
    iosBundleId: 'com.example.photogramApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBii0SOO1sNhc0l95oqOV7YuuFahK3W4Yo',
    appId: '1:948170723738:ios:8a0cea6fb8f011ccb3aa23',
    messagingSenderId: '948170723738',
    projectId: 'testing-fad53',
    storageBucket: 'testing-fad53.appspot.com',
    iosBundleId: 'com.example.photogramApp.RunnerTests',
  );
}
