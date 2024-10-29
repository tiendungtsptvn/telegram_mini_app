import 'package:js/js.dart';

///Docs:https://core.telegram.org/bots/webapps#mainbutton
@JS()
/// Telegram Main Button.
class TLMainButton {
  /// Use these properties as getters or setters
  external String text;
  external String color;
  external String textColor;
  external bool isVisible;
  external bool isActive;
  external bool get isProgressVisible;

  /// JS API methods
  external void setText(String text);
  external void onClick(jsVoidCallback);
  external void offClick(jsVoidCallback);
  external Future<void> show();
  external Future<void> hide();
  external void enable();
  external void disable();
  external void showProgress(bool leaveActive);
  external void hideProgress();
  external void setParams(MainButtonParams mainButtonParams);
}

/// Flutter class input of TelegramMainButton.
class MainButtonParams {
  String text;
  String color;
  String textColor;
  bool isVisible;
  bool isActive;
  MainButtonParams({
    required this.text,
    required this.color,
    required this.textColor,
    this.isVisible = true,
    this.isActive = false,
  });
}
