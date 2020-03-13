import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'package:finished_notes_firebase_ddd_course/domain/auth/user.dart';
import 'package:finished_notes_firebase_ddd_course/domain/auth/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(FirebaseUser _) {
    return _ == null
        ? null
        : User(
            id: UniqueId.fromFirebaseId(_.uid),
            name: StringSingleLine(_.displayName ?? _.email.split('@').first),
            emailAddress: EmailAddress(_.email),
          );
  }
}
