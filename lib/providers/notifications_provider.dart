import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NotificationsProvider extends ChangeNotifier {
  
  final GlobalKey key = LabeledGlobalKey("icon_button");
  OverlayEntry? _overlayEntry;
  Offset? buttonPosition;
  Size? buttonSize;
  bool isMenuOpen = false;
  
  _findButton() {
    RenderBox? renderBox = key.currentContext!.findRenderObject() as RenderBox?;
    buttonSize = renderBox!.size;
    buttonPosition = renderBox.localToGlobal(Offset.zero);
  }

  void openNotifications(BuildContext context) {
    _findButton();
    _overlayEntry = OverlayEntry(builder: (context) => NotificationsDropdown(buttonPosition: buttonPosition, buttonSize: buttonSize));
    Overlay.of(context)!.insert(_overlayEntry!);
    isMenuOpen = !isMenuOpen;
  }
  
  void closeNotifications() {
    if (_overlayEntry == null) {
      return;
    }
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
      isMenuOpen = !isMenuOpen;
    }
  }
  
  bool _notificaciones = true;
   
  bool get notificaciones => _notificaciones;
  set notificaciones(bool value) {
    _notificaciones = value;
    notifyListeners();
  }
  
  //TODO: provisional
  List<String> notificationsList = ['Registro  completado sin problemas', 'Tu cuenta ha sido desactivada temporalmente', 'Otra notificación mas por aqui', 'a', 'a', 'a', 'a'];
}
