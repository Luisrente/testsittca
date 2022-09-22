class GetUsers {
  GetUsers({
    required this.userId,
    required this.name,
  });

  int userId;
  String name;

  factory GetUsers.fromJson(Map<String, dynamic> json) => GetUsers(
        userId: json["UserID"],
        name: json["Name"],
      );

  Map<String, dynamic> toJson() => {
        "UserID": userId,
        "Name": name,
      };
}
