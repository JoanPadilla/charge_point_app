import 'package:charge_point_app/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class NotificationsButton extends StatelessWidget {
  const NotificationsButton({
    Key? key,
  }) : super(key: key);
  
  // final GlobalKey _key = LabeledGlobalKey("icon_button");
  // OverlayEntry? _overlayEntry;
  // Offset? buttonPosition;
  // Size? buttonSize;
  // bool isMenuOpen = false;
  
  // _findButton() {
  //   RenderBox? renderBox = _key.currentContext!.findRenderObject() as RenderBox?;
  //   buttonSize = renderBox!.size;
  //   buttonPosition = renderBox.localToGlobal(Offset.zero);
  // }
  
  // OverlayEntry _overlayEntryBuilder () {
  //   return OverlayEntry(builder: (context) {
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
  //   });
  // }

  // void openNotifications(BuildContext context) {
  //   _findButton();
  //   _overlayEntry = _overlayEntryBuilder();
  //   Overlay.of(context)!.insert(_overlayEntry!);
  //   isMenuOpen = !isMenuOpen;
  // }
  
  // void closeNotifications() {
  //   _overlayEntry!.remove();
  //   isMenuOpen = !isMenuOpen;
  // }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NotificationsProvider>(context, listen: true);
    return IconButton(
      key: provider.key,
      onPressed: () {
        provider.notificaciones = !provider.notificaciones;
        provider.isMenuOpen ? provider.closeNotifications() : provider.openNotifications(context);
      },
      icon: Stack(
        children: <Widget> [
          const Center(child: Icon(Icons.notifications, color: Colors.white, size: 25,),),
          if (provider.notificaciones) const Positioned(
            child: Icon(Icons.brightness_1, color: Colors.red, size: 12),
            left: 17,
            top: 9,
          ),
        ],
      ),
    );
  }
}

