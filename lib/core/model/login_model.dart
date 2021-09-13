import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String loginName;
  String account;
  String password;
  String passport;
  int uid;

  LoginModel(
      {this.account, this.password, this.passport, this.uid, this.loginName});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
