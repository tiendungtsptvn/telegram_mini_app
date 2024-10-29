// ignore_for_file: non_constant_identifier_names

import 'package:js/js.dart';
import 'package:telegram_mini_app/src/models/telegram_app_chat.dart';
import 'package:telegram_mini_app/src/models/web_app_user.dart';

/// Docs: https://core.telegram.org/bots/webapps#webappinitdata
@JS()
class MiniAppInitData {
  external String? get query_id;
  external MiniAppUser? get user;
  external MiniAppUser? get receiver;
  external TLAppChat? get chat;
  external String? get chat_type;
  external String? get chat_instance;
  external String? get start_param;
  external int? get can_send_after;
  external int? get auth_date;
  external String? get hash;
}
