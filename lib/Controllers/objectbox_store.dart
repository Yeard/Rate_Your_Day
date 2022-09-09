import 'package:rate_your_day/objectbox.g.dart';
import '../Models/User.dart';

class ObjectBox {
  late final Store store;

  late final Box<User> userBox;
  ObjectBox._create(this.store) {
    userBox = Box<User>(store);
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBox> create() async {
    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
    final store = await openStore();
    return ObjectBox._create(store);
  }
}
