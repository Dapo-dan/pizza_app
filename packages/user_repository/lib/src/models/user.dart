import '../entities/entities.dart';

class MyUser {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUser({
    required this.email,
    required this.hasActiveCart,
    required this.name,
    required this.userId,
  });

  static final empty = MyUser(
    email: '',
    hasActiveCart: false,
    name: '',
    userId: '',
  );

  MyUserEntity toEntity() {
    return MyUserEntity(
      email: email,
      hasActiveCart: hasActiveCart,
      name: name,
      userId: userId,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      email: entity.email,
      hasActiveCart: entity.hasActiveCart,
      name: entity.name,
      userId: entity.userId,
    );
  }

  @override
  String toString() {
    return 'MyUser: $userId, $email, $name, $hasActiveCart';
  }
}
