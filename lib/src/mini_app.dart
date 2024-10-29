@JS("Telegram.WebApp")
library telegram_mini_app;

import 'package:js/js.dart';
import 'models/models_export.dart';

/// All the properties and methods of the Telegram Web JS API
/// https://core.telegram.org/bots/webapps
///
/// [isDarkMode] is reliable only if used inside Telegram
bool get isDarkMode => colorScheme == "dark";

/// [isSupported] will return true only if opened inside Telegram
bool get isSupported => platform.toLowerCase() != "unknown";

/// Getters for properties
///
external String get initData;
external String get version;
external String get platform;
external String get colorScheme;
external String get headerColor;
external String get backgroundColor;
external bool get isClosingConfirmationEnabled;
external bool get isExpanded;
external double? get viewportHeight;
external double? get viewportStableHeight;

/// Getters for classes and objects
///
external ThemeParams get themeParams;
external TLBackButton get tlBackButton;
external TLMainButton get tlMainButton;
external MiniAppInitData get initDataUnsafe;
external TLHapticFeedback get tlHapticFeedback;

/// Functions
///
external Future<void> ready();
external Future<void> expand();
external Future<void> close();
external Future<void> enableClosingConfirmation();
external Future<void> disableClosingConfirmation();
external Future<void> sendData(dynamic data);
external Future<void> isVersionAtLeast(version);
external Future<void> setHeaderColor(String color);
external Future<void> setBackgroundColor(String color);
external Future<void> switchInlineQuery(query, [chooseChatTypes]);
external Future<void> openLink(url, [options]);
external Future<void> openTelegramLink(String url);
external Future<void> openInvoice(String url, [jsCallback]);
external Future<void> readTextFromClipboard(jsCallback);

///Dialogs
///
/// use [TelegramPopup.show()] to show the popup, instead of this method directly
external Future<void> showPopup(Record param, [jsCallback]);
external Future<void> showAlert(String message, [jsCallback]);
external Future<void> showConfirm(String message, [jsCallback]);
external Future<void> showScanQrPopup(Record params, [jsCallback]);
external Future<void> closeScanQrPopup();

///Events
///
/// Available events: https://core.telegram.org/bots/webapps#events-available-for-web-apps
/// use [TelegramWebEventType] to get the event names, and use [jsVoidCallback] for callbacks
/// or if any callback requires a return value, use [jsCallback] with the return type
external void onEvent(String eventType, jsCallback);
external void offEvent(String eventType, jsCallback);

///Callbacks
///
/// Always use these method for callbacks
jsCallback<T>(Function(T) callback) => allowInterop(callback);
jsVoidCallback(Function() callback) => allowInterop(callback);
