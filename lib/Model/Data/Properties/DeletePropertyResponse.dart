/// message : "Property deleted successfully."

class DeletePropertyResponse {
  // Declare the message field as a public property instead of private
  String message;

  // Constructor with optional message parameter
  DeletePropertyResponse({this.message = ''});

  // Named constructor from JSON
  DeletePropertyResponse.fromJson(Map<String, dynamic> json) : message = json['message'] ?? '';

  // Copy constructor
  DeletePropertyResponse copyWith({String? message}) {
    return DeletePropertyResponse(
      message: message ?? this.message,
    );
  }

  // Convert the object to JSON
  Map<String, dynamic> toJson() {
    return {'message': message};
  }
}
