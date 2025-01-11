/// message : "User deleted successfully"

class DeleteUserResponse {
  final String message;

  DeleteUserResponse({
    required this.message,
  });

  factory DeleteUserResponse.fromJson(Map<String, dynamic> json) {
    return DeleteUserResponse(
      message: json['message'] ?? '',
    );
  }

  DeleteUserResponse copyWith({
    String? message,
  }) {
    return DeleteUserResponse(
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
    };
  }
}
