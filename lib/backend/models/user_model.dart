import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rentndeal_admin_panel/constants/enums.dart';
import 'package:rentndeal_admin_panel/helper_function/formatter/formatter.dart';

class UserModel {
  final String? id;
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String profilePicture;
  String location;
  GeoPoint? locationGeopoint;
  AppRole  role;
  DateTime? createdAt;
  DateTime? updatedAt;

  // Contructor for UserModel
  UserModel ({
    this.id,
    required this.email,
    this.firstName = '',
    this.lastName = '',
    this.phoneNumber = '',
    this.profilePicture = '',
    this.location = '',
    this.locationGeopoint,
    this.role = AppRole.user,
    this.createdAt,
    this.updatedAt,
  });

  // Helper Methods
  String get fullName => '$firstName $lastName';
  String get formattedDate => Formatter.formatDate(createdAt);
  String get formattedUpdatedAtDate => Formatter.formatDate(updatedAt);
  String get formattedPhoneNo => Formatter.formatPhoneNumber(phoneNumber);

  // Static function to create an empty user model
  static UserModel empty() => UserModel(email: '');

  // Convert model to Json Structure for storing data in Firebase.
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
      'Location': location,
      'LocationGeopoint': locationGeopoint ?? '',
      'Role': role.name.toString(),
      'CreatedAt': createdAt,
      'UpdatedAt': updatedAt = DateTime.now(),
    };
  }


  // Factory method to create a UserModel from am Firebase document snapshot
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        firstName: data.containsKey('FirstName') ? data['FirstName'] ?? '' : '',
        lastName: data.containsKey('LastName') ? data['LastName'] ?? '' : '',
        email: data.containsKey('Email') ? data['Email'] ?? '' : '',
        phoneNumber: data.containsKey('PhoneNumber') ? data['PhoneNumber'] ?? '' : '',
        profilePicture: data.containsKey('ProfilePicture') ? data['ProfilePicture'] ?? '' : '',
        location: data.containsKey('Location') ? data['Location'] ?? '' : '',
        locationGeopoint: data['LocationGeopoint'] != null && data['LocationGeopoint'] is GeoPoint ? data['LocationGeopoint'] as GeoPoint: null,
        role: data.containsKey('Role') && data['Role'] != null ? data['Role'].toString().trim().toLowerCase() == 'admin' ? AppRole.admin : AppRole.user : AppRole.user,
        createdAt: data.containsKey('CreatedAt') ? data['CreatedAt']?.toDate() ?? DateTime.now() : DateTime.now(),
        updatedAt: data.containsKey('UpdatedAt') ? data['UpdatedAt']?.toDate() ?? DateTime.now() : DateTime.now(),
      );
    } else {
      return empty();
    }
  }
}