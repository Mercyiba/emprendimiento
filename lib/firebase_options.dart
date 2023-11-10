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
    apiKey: 'AIzaSyC2Ssp_8s3RiVZshai0GFZy_S-76dOkXZo',
    appId: '1:369053666887:web:8bd7f92cef30ab4be92b62',
    messagingSenderId: '369053666887',
    projectId: 'geoglamour-a2edc',
    authDomain: 'geoglamour-a2edc.firebaseapp.com',
    storageBucket: 'geoglamour-a2edc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvQDdAUbm0qqGdNU3dOS2tz9cPTbSJVJM',
    appId: '1:369053666887:android:36e99e9fc5999260e92b62',
    messagingSenderId: '369053666887',
    projectId: 'geoglamour-a2edc',
    storageBucket: 'geoglamour-a2edc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLrlnZslSVDcLVTqq-H2u3AfIQNlL8dZU',
    appId: '1:369053666887:ios:415a5fd058ebb43ae92b62',
    messagingSenderId: '369053666887',
    projectId: 'geoglamour-a2edc',
    storageBucket: 'geoglamour-a2edc.appspot.com',
    iosBundleId: 'com.mercy.emprendimiento',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLrlnZslSVDcLVTqq-H2u3AfIQNlL8dZU',
    appId: '1:369053666887:ios:c515a318371e180de92b62',
    messagingSenderId: '369053666887',
    projectId: 'geoglamour-a2edc',
    storageBucket: 'geoglamour-a2edc.appspot.com',
    iosBundleId: 'com.mercy.emprendimiento.RunnerTests',
  );
}
