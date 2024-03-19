import 'package:bellymax/features/authentication/screens/login/login.dart';
import 'package:bellymax/features/authentication/screens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// variables
  final deviceStorage = GetStorage(); 
  final _auth = FirebaseAuth.instance; 

  /// Called from main.dart on app launch
  @override 
  void onReady() {
    // Remove the native splash screen 
    FlutterNativeSplash.remove(); 

    // Redirect to the appropriate screen 
    screenRedirect(); 
  }

  /// Function to show relevant screen 
  screenRedirect() async{
    // local storage
    deviceStorage.writeIfNull('IsFirstTime', true); 
    
    // check if it's the first time launching the app
    deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(() => const OnBoardingScreen());
  }

  /* _____________ Email and Password Validation _____________ */


}