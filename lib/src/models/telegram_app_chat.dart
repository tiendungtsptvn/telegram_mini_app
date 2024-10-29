// ignore_for_file: non_constant_identifier_names

import 'package:js/js.dart';

/// Docs: https://core.telegram.org/bots/webapps#webappchat
@JS()
/// Telegram App Chat.
class TLAppChat {
  external int get id;
  external String get photo_url;
  external String get type;
  external String get title;
  external String get username;
}
