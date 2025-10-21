class LoginHistoryModel {
  final String id;
  final String userId;
  final String email;
  final String ipAddress;
  final String userAgent;
  final DateTime timestamp;

  LoginHistoryModel({
    required this.id,
    required this.userId,
    required this.email,
    required this.ipAddress,
    required this.userAgent,
    required this.timestamp,
  });

  factory LoginHistoryModel.fromJson(Map<String, dynamic> json) {
    return LoginHistoryModel(
      id: json['_id'] ?? json['id'] ?? '',
      userId: json['user_id'] ?? '',
      email: json['email'] ?? '',
      ipAddress: json['ip_address'] ?? '',
      userAgent: json['user_agent'] ?? '',
      timestamp: json['timestamp'] != null
          ? DateTime.parse(json['timestamp'])
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() => {
        '_id': id,
        'user_id': userId,
        'email': email,
        'ip_address': ipAddress,
        'user_agent': userAgent,
        'timestamp': timestamp.toIso8601String(),
      };
}
