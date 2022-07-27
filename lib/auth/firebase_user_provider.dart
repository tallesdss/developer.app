import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AdubeirosRaizFirebaseUser {
  AdubeirosRaizFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AdubeirosRaizFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AdubeirosRaizFirebaseUser> adubeirosRaizFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AdubeirosRaizFirebaseUser>(
            (user) => currentUser = AdubeirosRaizFirebaseUser(user));
