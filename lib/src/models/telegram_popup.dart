import '../mini_app.dart';

enum PopupButtonType { cancel, ok, close, destructive }

/// Manage Telegram popups.
class TLPopup {
  String title;
  String message;
  List<PopupButton>? buttons;
  Function(String buttonId)? onTap;

  TLPopup({
    required this.title,
    required this.message,
    this.buttons,
    this.onTap,
  });

  /// use [show] to show the popup
  /// Example: TelegramPopup.show().
  void show() {
    var buttonsList = buttons
        ?.map((PopupButton? e) =>
            (id: e?.id, type: e?.type?.name ?? "default", text: e?.text))
        .toList();
    showPopup(
      (
        title: title,
        message: message,
        buttons: buttonsList ?? [(id: "cancel", type: "cancel", text: "Cancel")]
      ),
      jsCallback<String>((String buttonId) {
        onTap?.call(buttonId);
      }),
    );
  }
}

class PopupButton {
  String id;
  PopupButtonType? type;
  String? text;
  PopupButton({
    required this.id,
    this.type,
    this.text,
  });
}
