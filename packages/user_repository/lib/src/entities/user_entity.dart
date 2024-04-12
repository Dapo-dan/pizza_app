class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity({
    required this.email,
    required this.hasActiveCart,
    required this.name,
    required this.userId,
  });

  Map<String, Object> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
        email: doc['email'],
        hasActiveCart: doc['hasActiveCart'],
        name: doc['name'],
        userId: doc['userId']);
  }

  @override
  String toString() {
    return 'MyUser: $userId, $email, $name, $hasActiveCart';
  }
}
