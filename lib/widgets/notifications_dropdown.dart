import 'package:charge_point_app/providers/notifications_provider.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


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
    NotificationsProvider provider = Provider.of<NotificationsProvider>(context);
    return Positioned(
      top: buttonPosition!.dy + buttonSize!.height + 10,
      left: buttonPosition!.dx + (buttonSize!.width / 2) - 150,
      child: Container(
        height: 250,
        width: 220,
        padding: const EdgeInsets.all(3),
        decoration: ShapeDecoration(
          // color: const Color.fromARGB(255, 12, 87, 158),
          color: Color.fromARGB(255, 29, 158, 98),
          shape: _NotificationsWindowBorder()
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(10)
          ),
          child: ListView.builder(
            padding: const EdgeInsets.all(5),
            itemCount: provider.notificationsList.length,
            itemBuilder: ( _ , index) {
              return Card(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Text(
                          provider.notificationsList[index],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.close))
                  ],
                ),);
            },
          ),
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
    rect = Rect.fromPoints(rect.topLeft, rect.bottomRight);
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(10)))
      ..moveTo(rect.topCenter.dx + 30, rect.topCenter.dy)
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