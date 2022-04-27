import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Historial'),
      ),
      drawer: const CustomSideMenu(),
      body: ListView(
        children: [
          ListTile(
            leading: const ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: AppTheme.secondaryColor,),
            title: const Text('05/03/2022   -   P6'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          const Divider(color: AppTheme.primaryColor, thickness: 0.2,),
          ListTile(
            leading: const ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: AppTheme.secondaryColor,),
            title: const Text('08/03/2022   -   P2'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          const Divider(color: AppTheme.primaryColor, thickness: 0.2,),
          ListTile(
            leading: const ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: AppTheme.secondaryColor,),
            title: const Text('08/03/2022   -   P2'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          const Divider(color: AppTheme.primaryColor, thickness: 0.2,),
          ListTile(
            leading: const ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: AppTheme.secondaryColor,),
            title: const Text('08/03/2022   -   P2'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          const Divider(color: AppTheme.primaryColor, thickness: 0.2,),
          const ListTile(
            leading: ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: AppTheme.secondaryColor,),
            title: Text('08/03/2022   -   P2'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(color: AppTheme.primaryColor, thickness: 0.2,),
          const ListTile(
            leading: ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: AppTheme.secondaryColor,),
            title: Text('08/03/2022   -   P2'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      )
    );
  }
}