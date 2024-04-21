import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdate/authenticationScreen/login_screen.dart';
import 'package:getdate/controllers/authentication_controller.dart';



// void main() async
// {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   //please add your own google-services.json file in your android/app/ folder
//   await Firebase.initializeApp().then((value)
//   {
//     Get.put(AuthenticationController());
//   });
//
//   runApp(const MyApp());
// }

// void main() async
// {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   Platform.isAndroid ? await Firebase.initializeApp(
//       await Firebase.initializeApp(
//         options: FirebaseOptions(
//           apiKey: "AIzaSyDpFIaBfz_tdGPIPvPonDFYLCip_1sD9r0",
//           appId: "1:236384714702:android:120b23beb827d1ac78359f",
//           messagingSenderId: "236384714702",
//           projectId: "getdate-254e8",
//         ))
//       : await Firebase.intializeApp();
//    runApp(const MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Include your FirebaseOptions here
  FirebaseOptions firebaseOptions = const FirebaseOptions(
    apiKey: "AIzaSyDpFIaBfz_tdGPIPvPonDFYLCip_1sD9r0",
    appId: "1:236384714702:android:120b23beb827d1ac78359d",
    messagingSenderId: "236384714702",
    projectId: "getdate-254e8",
  );

  await Firebase.initializeApp(
    options: firebaseOptions,
  );

  Get.put(AuthenticationController());

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetDate',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black87,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}


