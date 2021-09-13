// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return LoginModel(
      account: json['account'] as String,
      password: json['password'] as String,
      passport: json['passport'] as String,
      uid: json['uid'] as int,
      loginName: json['loginName'] as String);
}

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'loginName': instance.loginName,
      'account': instance.account,
      'password': instance.password,
      'passport': instance.passport,
      'uid': instance.uid
    };
