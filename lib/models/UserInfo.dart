class UserInfo {
  String name;
  String password;

  UserInfo({this.name = "", this.password = ""});

  Map<String, dynamic> toMap() {
    return {
      'password': this.password,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      password: map['password'] as String,
    );
  }

  @override
  String toString() {
    return 'UserInfo{name: $name, password: $password}';
  }

  UserInfo copyWith({
    String? name,
    String? password,
  }) {
    return UserInfo(
      name: name ?? this.name,
      password: password ?? this.password,
    );
  }
}
