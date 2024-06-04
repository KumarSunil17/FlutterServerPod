import 'package:flutter_server_pod_server/src/generated/user_class.dart';
import 'package:serverpod/serverpod.dart';

class UserEndpoint extends Endpoint {
  Future<User> create(Session session, User user) async {
    await User.db.insertRow(session, user);
    return user;
  }

  Future<User?> read(Session session, int id) async {
    return await User.db.findById(session, id);
  }

  Future<List<User>> readAll(Session session) async {
    return await User.db.find(session);
  }

  Future<User> update(Session session, User user) async {
    await User.db.updateRow(session, user);
    return user;
  }

  Future<User> delete(Session session, User user) async {
    return await User.db.deleteRow(session, user);
  }
}
