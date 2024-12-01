import 'dart:convert';

class UserDetails {
  final String name;
  final String password;
  UserDetails({
    required this.name,
    required this.password,
  });

  UserDetails copyWith({
    String? name,
    String? password,
  }) {
    return UserDetails(
      name: name ?? this.name,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
    };
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      name: map['name'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDetails.fromJson(String source) => UserDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserDetails(name: $name, password: $password)';

  @override
  bool operator ==(covariant UserDetails other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.password == password;
  }

  @override
  int get hashCode => name.hashCode ^ password.hashCode;
}

final userCred = UserDetails(name: "user", password: "1234");