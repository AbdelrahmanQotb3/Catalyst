/// message : "User updated successfully."
/// user : {"id":70,"name":"Ms. Vita Jacobs","email":"dkshlerin@example.com","phone":"1-570-401-1078","role":"owner","profile_image":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/IMG_0997%20(1).jpg","intro_video":"https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4","created_at":"2025-01-07T20:41:31.000000Z","updated_at":"2025-01-07T20:41:31.000000Z"}

class UpdateUserResponse {
  final String message;
  final User? user;

  UpdateUserResponse({
    required this.message,
    this.user,
  });

  factory UpdateUserResponse.fromJson(Map<String, dynamic> json) {
    return UpdateUserResponse(
      message: json['message'] ?? '',
      user: json['user'] != null ? User.fromJson(json['user']) : null,
    );
  }

  UpdateUserResponse copyWith({
    String? message,
    User? user,
  }) {
    return UpdateUserResponse(
      message: message ?? this.message,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      if (user != null) 'user': user!.toJson(),
    };
  }
}

/// id : 70
/// name : "Ms. Vita Jacobs"
/// email : "dkshlerin@example.com"
/// phone : "1-570-401-1078"
/// role : "owner"
/// profile_image : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/IMG_0997%20(1).jpg"
/// intro_video : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4"
/// created_at : "2025-01-07T20:41:31.000000Z"
/// updated_at : "2025-01-07T20:41:31.000000Z"

class User {
  final num id;
  final String name;
  final String email;
  final String phone;
  final String role;
  final String profileImage;
  final String introVideo;
  final String createdAt;
  final String updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.profileImage,
    required this.introVideo,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      role: json['role'] ?? '',
      profileImage: json['profile_image'] ?? '',
      introVideo: json['intro_video'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }

  User copyWith({
    num? id,
    String? name,
    String? email,
    String? phone,
    String? role,
    String? profileImage,
    String? introVideo,
    String? createdAt,
    String? updatedAt,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      profileImage: profileImage ?? this.profileImage,
      introVideo: introVideo ?? this.introVideo,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'role': role,
      'profile_image': profileImage,
      'intro_video': introVideo,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
