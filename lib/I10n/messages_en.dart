// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "homeTitle" : MessageLookupByLibrary.simpleMessage("Home"),
    "language" : MessageLookupByLibrary.simpleMessage("Language"),
    "login" : MessageLookupByLibrary.simpleMessage("Login"),
    "logout" : MessageLookupByLibrary.simpleMessage("Logout"),
    "manage" : MessageLookupByLibrary.simpleMessage("Manage"),
    "passwordBelow6Digits" : MessageLookupByLibrary.simpleMessage("Password length is not enough 6 digits"),
    "passwordPlaceholder" : MessageLookupByLibrary.simpleMessage("Please enter password"),
    "peferences" : MessageLookupByLibrary.simpleMessage("Preferences"),
    "splashTitle" : MessageLookupByLibrary.simpleMessage("TODO Application"),
    "theme" : MessageLookupByLibrary.simpleMessage("Theme"),
    "userNamePlaceholder" : MessageLookupByLibrary.simpleMessage("Please enter username")
  };
}
