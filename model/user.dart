import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

class User {
  User({this.userName, this.points, this.firstName, this.lastName});
  @required
  String userName;
  @required
  String firstName;
  @required
  String lastName;
  @required
  int points;

  Map<String, dynamic> toJson(User user) {
    final Map<String, dynamic> userData = {
      'userName': user.userName,
      'firstName': user.firstName,
      'lastName': user.lastName,
      'points': user.points,
    };
    return userData;
  }

  User fromJson(Map<String, dynamic> userData) {
    User user = User(
        userName: userData['userName'],
        firstName: userData['firstName'],
        lastName: userData['lastName'],
        points: userData['points']);
    return user;
  }
}
