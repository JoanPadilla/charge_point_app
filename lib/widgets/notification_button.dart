import 'package:charge_point_app/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class NotificationsButton extends StatelessWidget {
  const NotificationsButton({
    Key? key,
  }) : super(key: key);

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

