import 'User.dart';

class LoginModel {
  LoginModel({
      this.status, 
      this.token, 
      this.user,});

  LoginModel.fromJson(dynamic json) {
    status = json['status'];
    token = json['token'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String ?status;
  String ?token;
  User ?user;



}