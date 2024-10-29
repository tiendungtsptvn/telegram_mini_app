import 'package:js/js.dart';

///Docs: https://core.telegram.org/bots/webapps#hapticfeedback
@JS()

/// Telegram Haptic Feedback.
class TLHapticFeedback {
  external void impactOccurred(style);
  external void notificationOccurred(type);
  external void selectionChanged();
}
