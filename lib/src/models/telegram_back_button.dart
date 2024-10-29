import 'package:js/js.dart';

/// Docs: https://core.telegram.org/bots/webapps#backbutton
@JS()
/// Telegram Back Button.
class TLBackButton {
  external bool isVisible;
  external void onClick(jsVoidCallback);
  external void offClick(jsVoidCallback);
  external Future show();
  external Future hide();
}
