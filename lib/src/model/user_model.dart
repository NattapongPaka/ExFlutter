// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    String user;
    String pass;
    String fullName;

    UserModel({
        this.user,
        this.pass,
        this.fullName,
    });

    UserModel copyWith({
        String user,
        String pass,
        String fullName,
    }) => 
        UserModel(
            user: user ?? this.user,
            pass: pass ?? this.pass,
            fullName: fullName ?? this.fullName,
        );

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        user: json["user"] == null ? null : json["user"],
        pass: json["pass"] == null ? null : json["pass"],
        fullName: json["full_name"] == null ? null : json["full_name"],
    );

    Map<String, dynamic> toJson() => {
        "user": user == null ? null : user,
        "pass": pass == null ? null : pass,
        "full_name": fullName == null ? null : fullName,
    };
}
