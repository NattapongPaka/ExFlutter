// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    String token;
    Account account;

    UserModel({
        this.token,
        this.account,
    });

    UserModel copyWith({
        String token,
        Account account,
    }) => 
        UserModel(
            token: token ?? this.token,
            account: account ?? this.account,
        );

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        token: json["token"] == null ? null : json["token"],
        account: json["account"] == null ? null : Account.fromJson(json["account"]),
    );

    Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
        "account": account == null ? null : account.toJson(),
    };
}

class Account {
    int accountId;
    String firstName;
    String lastName;
    String email;
    String userSecretToken;
    bool activate;
    String createdAt;
    String updatedAt;

    Account({
        this.accountId,
        this.firstName,
        this.lastName,
        this.email,
        this.userSecretToken,
        this.activate,
        this.createdAt,
        this.updatedAt,
    });

    Account copyWith({
        int accountId,
        String firstName,
        String lastName,
        String email,
        String userSecretToken,
        bool activate,
        String createdAt,
        String updatedAt,
    }) => 
        Account(
            accountId: accountId ?? this.accountId,
            firstName: firstName ?? this.firstName,
            lastName: lastName ?? this.lastName,
            email: email ?? this.email,
            userSecretToken: userSecretToken ?? this.userSecretToken,
            activate: activate ?? this.activate,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );

    factory Account.fromJson(Map<String, dynamic> json) => Account(
        accountId: json["accountID"] == null ? null : json["accountID"],
        firstName: json["firstName"] == null ? null : json["firstName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        email: json["email"] == null ? null : json["email"],
        userSecretToken: json["userSecretToken"] == null ? null : json["userSecretToken"],
        activate: json["activate"] == null ? null : json["activate"],
        createdAt: json["createdAt"] == null ? null : json["createdAt"],
        updatedAt: json["updatedAt"] == null ? null : json["updatedAt"],
    );

    Map<String, dynamic> toJson() => {
        "accountID": accountId == null ? null : accountId,
        "firstName": firstName == null ? null : firstName,
        "lastName": lastName == null ? null : lastName,
        "email": email == null ? null : email,
        "userSecretToken": userSecretToken == null ? null : userSecretToken,
        "activate": activate == null ? null : activate,
        "createdAt": createdAt == null ? null : createdAt,
        "updatedAt": updatedAt == null ? null : updatedAt,
    };
}
