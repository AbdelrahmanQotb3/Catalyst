/// id : 39
/// name : "Otis O'Koni"
/// email : "yundt.adrain@example.net"
/// phone : "+1 (820) 376-4124"
/// role : "admin"
/// profile_image : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/IMG_0997%20(1).jpg"
/// intro_video : "https://bio3.catalyst.com.eg/public/Catalyst_portfolio/techtest.mp4"
/// created_at : "2025-01-07T20:41:31.000000Z"
/// updated_at : "2025-01-10T20:31:07.000000Z"

class UpdateSpecificUser {
  UpdateSpecificUser({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.role,
    this.profileImage,
    this.introVideo,
    this.createdAt,
    this.updatedAt,
  });

  UpdateSpecificUser.fromJson(Map<String, dynamic> json)
      : id = json['id'] as num?,
        name = json['name'] as String?,
        email = json['email'] as String?,
        phone = json['phone'] as String?,
        role = json['role'] as String?,
        profileImage = json['profile_image'] as String?,
        introVideo = json['intro_video'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?;

  final num? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? role;
  final String? profileImage;
  final String? introVideo;
  final String? createdAt;
  final String? updatedAt;

  UpdateSpecificUser copyWith({
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
    return UpdateSpecificUser(
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
