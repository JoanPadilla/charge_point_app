import 'package:charge_point_app/models/menu_option.dart';
import 'package:charge_point_app/providers/notifications_provider.dart';
import 'package:charge_point_app/routes/app_routes.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


class CustomSideMenu extends StatelessWidget {
  const CustomSideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NotificationsProvider notificationsProvider = Provider.of<NotificationsProvider>(context, listen: false);
    notificationsProvider.closeNotifications();
    return SafeArea(
      child: Drawer(
        child: ListView.separated(
          itemBuilder: ( _ , i) {
            MenuOption menuOption = AppRoutes.menuOptions[i];
            return ListTile(
              leading: Icon(menuOption.icon, color: AppTheme.primaryColor,),
              title: Text(menuOption.name.tr),
              onTap: () {
                if (ModalRoute.of(context)!.settings.name == menuOption.route){
                  Navigator.pop(context);
                }
                else {
                  Navigator.pushReplacementNamed(context, menuOption.route);
                }
                
              },
            );
          },
          separatorBuilder: ( _ , i ) => const Divider(thickness: 2,),
          itemCount: AppRoutes.menuOptions.length,
        ),
      ),
    );
  }
}