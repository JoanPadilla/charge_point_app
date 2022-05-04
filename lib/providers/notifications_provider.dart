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
}

// class _NotificationsDropdown extends StatelessWidget {
//   const _NotificationsDropdown({
//     Key? key,
//     required this.buttonPosition,
//     required this.buttonSize,
//   }) : super(key: key);

//   final Offset? buttonPosition;
//   final Size? buttonSize;

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: buttonPosition!.dy + buttonSize!.height + 10,
//       left: buttonPosition!.dx + (buttonSize!.width / 2) - 70,
//       child: Container(
//         height: 100,
//         width: 140,
//         decoration: ShapeDecoration(
//           color: Colors.red,
//           shape: _NotificationsWindowBorder()
//         ),
//         alignment: Alignment.center,
        
//       ),
//     );
//   }
// }

// class _NotificationsWindowBorder extends ShapeBorder {
//   @override
//   EdgeInsetsGeometry get dimensions => const EdgeInsets.all(5);

//   @override
//   Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

//   @override
//   Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
//     rect = Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 20));
//     return Path()
//       ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(10)))
//       ..moveTo(rect.topCenter.dx - 10, rect.topCenter.dy)
//       ..relativeLineTo(10, -10)
//       ..relativeLineTo(10, 10)
//       ..close();
//   }

//   @override
//   void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

//   @override
//   ShapeBorder scale(double t) {
//     return this;
//   }
  
// }