// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signup _$SignupFromJson(Map<String, dynamic> json) => Signup(
      json['username'] as String,
      json['password'] as String,
      json['email'] as String,
      json['phone'] as String,
    );

Map<String, dynamic> _$SignupToJson(Signup instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'phone': instance.phone,
    };
