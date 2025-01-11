/// message : "User created successfully."
/// user : {"name":"Ahmed","email":"Ahmed333@gmail.com","updated_at":"2025-01-11T11:58:53.000000Z","created_at":"2025-01-11T11:58:53.000000Z","id":1147}

class CreateUserResponse {
  final String message;
  final User? user;

  CreateUserResponse({
    required this.message,
    this.user,
  });

  factory CreateUserResponse.fromJson(Map<String, dynamic> json) {
    return CreateUserResponse(
      message: json['message'] ?? '',
      user: json['user'] != null ? User.fromJson(json['user']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'message': message,
    };
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }

  CreateUserResponse copyWith({
    String? message,
    User? user,
  }) {
    return CreateUserResponse(
      message: message ?? this.message,
      user: user ?? this.user,
    );
  }
}

/// name : "Ahmed"
/// email : "Ahmed333@gmail.com"
/// updated_at : "2025-01-11T11:58:53.000000Z"
/// created_at : "2025-01-11T11:58:53.000000Z"
/// id : 1147

class User {
  final String name;
  final String email;
  final String updatedAt;
  final String createdAt;
  final num id;

  User({
    required this.name,
    required this.email,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      updatedAt: json['updated_at'] ?? '',
      createdAt: json['created_at'] ?? '',
      id: json['id'] ?? 0,
    );
  }

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
