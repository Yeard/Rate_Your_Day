import 'package:objectbox/objectbox.dart';
import 'package:rate_your_day/objectbox.g.dart';

@Entity()
class User {
  int id = 0;
  String? nickname;
  String? email;
  String? password;
  String? gender;
  String? dateOfBirth;

  User({
    this.nickname,
    this.email,
    this.password,
    this.gender,
    this.dateOfBirth,
  });
}
