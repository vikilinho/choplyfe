import 'package:json_annotation/json_annotation.dart';

part 'signup.g.dart';

@JsonSerializable()
class Signup {
  final String username;
  final String password;
  final String email;
  final String phone;

  Signup(this.username, this.password, this.email, this.phone);
  factory Signup.fromJson(Map<String, dynamic> json) => _$SignupFromJson(json);

  Map<String, dynamic> toJson() => _$SignupToJson(this);
}
