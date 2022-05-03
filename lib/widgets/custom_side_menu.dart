import 'package:charge_point_app/models/menu_option.dart';
import 'package:charge_point_app/routes/app_routes.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomSideMenu extends StatelessWidget {
  const CustomSideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView.separated(
          itemBuilder: ( _ , i) {
            MenuOption menuOption = AppRoutes.menuOptions[i];
            return ListTile(
              leading: Icon(menuOption.icon, color: AppTheme.primaryColor,),
              title: Text(menuOption.name.tr),
              onTap: () => Navigator.pushReplacementNamed(context, menuOption.route),
            );
          },
          separatorBuilder: ( _ , i ) => const Divider(thickness: 2,),
          itemCount: AppRoutes.menuOptions.length,
        ),
      ),
    );
  }
}