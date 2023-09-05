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
    apiKey: 'AIzaSyBsyUc4A0RJlSzHRvYVhQMslXfwm55bYqc',
    appId: '1:101321901822:web:4384585149a89026e447af',
    messagingSenderId: '101321901822',
    projectId: 'portfoliosite-ca617',
    authDomain: 'portfoliosite-ca617.firebaseapp.com',
    storageBucket: 'portfoliosite-ca617.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCmnUI7Ww3GgIlol83HT_mP6wFHg-X9RU',
    appId: '1:101321901822:android:1746f1b3fdf0d43ae447af',
    messagingSenderId: '101321901822',
    projectId: 'portfoliosite-ca617',
    storageBucket: 'portfoliosite-ca617.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6kS7syuiSxD-KPh1Q-b0K1WiL0T46CXs',
    appId: '1:101321901822:ios:cd1801b5210d4716e447af',
    messagingSenderId: '101321901822',
    projectId: 'portfoliosite-ca617',
    storageBucket: 'portfoliosite-ca617.appspot.com',
    iosClientId: '101321901822-ms05tq7ge43e8dpr8cl0cjtu23ikjjss.apps.googleusercontent.com',
    iosBundleId: 'com.example.portfoliosite',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD6kS7syuiSxD-KPh1Q-b0K1WiL0T46CXs',
    appId: '1:101321901822:ios:646f346530f8b77ee447af',
    messagingSenderId: '101321901822',
    projectId: 'portfoliosite-ca617',
    storageBucket: 'portfoliosite-ca617.appspot.com',
    iosClientId: '101321901822-4co6e4lk0992gidrhgnsjpcrmagpp21p.apps.googleusercontent.com',
    iosBundleId: 'com.example.portfoliosite.RunnerTests',
  );
}
