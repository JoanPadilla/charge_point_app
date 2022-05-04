import 'package:flutter/material.dart';


class NotificationsDropdown extends StatelessWidget {
  const NotificationsDropdown({
    Key? key,
    required this.buttonPosition,
    required this.buttonSize,
  }) : super(key: key);

  final Offset? buttonPosition;
  final Size? buttonSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: buttonPosition!.dy + buttonSize!.height + 10,
      left: buttonPosition!.dx + (buttonSize!.width / 2) - 110,
      child: Container(
        height: 250,
        width: 180,
        decoration: ShapeDecoration(
          color: Color.fromARGB(255, 145, 182, 224),
          shape: _NotificationsWindowBorder()
        ),
        alignment: Alignment.center,
        
      ),
    );
  }
}

class _NotificationsWindowBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.all(5);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect = Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 20));
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(10)))
      ..moveTo(rect.topCenter.dx + 10, rect.topCenter.dy)
      ..relativeLineTo(10, -10)
      ..relativeLineTo(10, 10)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return this;
  }
  
}