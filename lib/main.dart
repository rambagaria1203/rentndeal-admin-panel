import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rentndeal_admin_panel/app.dart';
import 'package:rentndeal_admin_panel/backend/repositories/authentication_repository.dart';
import 'package:rentndeal_admin_panel/firebase_options.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {

  // Ensure point widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Getx Local Storage
  await GetStorage.init();

  // Remove # sign from url
  setPathUrlStrategy();

  // Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  .then((value) => Get.put(AuthenticationRepository()));

  // Main App Starts here....
  runApp(const App());
}
