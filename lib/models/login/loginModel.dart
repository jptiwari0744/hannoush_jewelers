import 'package:json_annotation/json_annotation.dart';
part 'loginModel.g.dart';

@JsonSerializable()
class LoginModel {
  String email;
  String password;
  LoginModel({required this.email, required this.password});
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    print('json$json');
    return _$LoginModelFromJson(json);
  }
  //convert json to dart
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
//convert dart to json
}
