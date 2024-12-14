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
    apiKey: 'AIzaSyBQlWa2pW4fcM8YapBScVTIClPSlpizmrA',
    appId: '1:306875245988:web:3e5152a9081006d1c2cd31',
    messagingSenderId: '306875245988',
    projectId: 'nabahni-84826',
    authDomain: 'nabahni-84826.firebaseapp.com',
    storageBucket: 'nabahni-84826.firebasestorage.app',
    measurementId: 'G-05E5DMGFPT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD7y7hOGKb03mJqmI6HeIjCi49_MX9XLd0',
    appId: '1:306875245988:android:e2ae712f6ac32a1dc2cd31',
    messagingSenderId: '306875245988',
    projectId: 'nabahni-84826',
    storageBucket: 'nabahni-84826.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdXfAZJnUgIgKhD5eYt0r1tdawIP9tA9s',
    appId: '1:306875245988:ios:b8a9e681ccec3a75c2cd31',
    messagingSenderId: '306875245988',
    projectId: 'nabahni-84826',
    storageBucket: 'nabahni-84826.firebasestorage.app',
    iosBundleId: 'com.example.nabhni',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdXfAZJnUgIgKhD5eYt0r1tdawIP9tA9s',
    appId: '1:306875245988:ios:b8a9e681ccec3a75c2cd31',
    messagingSenderId: '306875245988',
    projectId: 'nabahni-84826',
    storageBucket: 'nabahni-84826.firebasestorage.app',
    iosBundleId: 'com.example.nabhni',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBQlWa2pW4fcM8YapBScVTIClPSlpizmrA',
    appId: '1:306875245988:web:08244ed6c8fb8c73c2cd31',
    messagingSenderId: '306875245988',
    projectId: 'nabahni-84826',
    authDomain: 'nabahni-84826.firebaseapp.com',
    storageBucket: 'nabahni-84826.firebasestorage.app',
    measurementId: 'G-DQ3Q0YGEJK',
  );

}