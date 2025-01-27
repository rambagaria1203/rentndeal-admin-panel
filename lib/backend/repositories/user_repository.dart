import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rentndeal_admin_panel/backend/models/user_model.dart';
import 'package:rentndeal_admin_panel/backend/repositories/authentication_repository.dart';
import 'package:rentndeal_admin_panel/helper_function/exceptions/firebase_auth_exceptions.dart';
import 'package:rentndeal_admin_panel/helper_function/exceptions/format_exception.dart';
import 'package:rentndeal_admin_panel/helper_function/exceptions/platform_exceptions.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  // Function to save user data to Firestore
  Future<void> createUser(UserModel user) async {
    try {
      await _db.collection('users').doc(user.id).set(user.toJson());
    } on FirebaseAuthException catch(e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const CustomFormatException();
    } on PlatformException catch (e) {
      throw CustomPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }


  Future<UserModel> fetchAdminDetails() async {
    try {
      final docSnapshot = await _db.collection('users').doc(AuthenticationRepository.instance.authUser!.uid).get();
        return UserModel.fromSnapshot(docSnapshot);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw CustomPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }


}