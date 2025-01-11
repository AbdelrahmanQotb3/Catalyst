/// message : "User created successfully."
/// user : {"name":"Ahmed","email":"ahmed@gmail.com","updated_at":"2025-01-10T20:21:29.000000Z","created_at":"2025-01-10T20:21:29.000000Z","id":1080}

class CreateUserResponse {
  CreateUserResponse({
    required this.message,
    this.user,
  });

  CreateUserResponse.fromJson(Map<String, dynamic> json)
      : message = json['message'] as String?,
        user = json['user'] != null ? User.fromJson(json['user']) : null;

  final String? message;
  final User? user;

  CreateUserResponse copyWith({
    String? message,
    User? user,
  }) {
    return CreateUserResponse(
      message: message ?? this.message,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (user != null) {
      map['user'] = user!.toJson();
    }
    return map;
  }
}

/// name : "Ahmed"
/// email : "ahmed@gmail.com"
/// updated_at : "2025-01-10T20:21:29.000000Z"
/// created_at : "2025-01-10T20:21:29.000000Z"
/// id : 1080

class User {
  User({
    required this.name,
    required this.email,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        email = json['email'] as String?,
        updatedAt = json['updated_at'] as String?,
        createdAt = json['created_at'] as String?,
        id = json['id'] as num?;

  final String? name;
  final String? email;
  final String? updatedAt;
  final String? createdAt;
  final num? id;

  User copyWith({
    String? name,
    String? email,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'updated_at': updatedAt,
      'created_at': createdAt,
      'id': id,
    };
  }
}