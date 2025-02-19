import 'package:user_repository/src/entities/entities.dart';

class MyUser {

  String userId;
  String email;
  //String password;
  String name;
  bool hasActiveCart;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  static final empty = MyUser(
    userId: '',
    email: '',
    name: '',
    hasActiveCart: false,
  );

  MyUserEntity toEntity() {
    return MyUserEntity(
      userId: '',
      email: '',
      name: '',
      hasActiveCart: false,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      userId: entity.userId, 
      email: entity.email, 
      name: entity.name, 
      hasActiveCart: entity.hasActiveCart
    );
  }

  @override
  String toString() {

    return 'MyUser: $userId, $email, $name, $hasActiveCart';

  }

}