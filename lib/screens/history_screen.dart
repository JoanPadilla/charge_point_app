import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      appBar: AppBar(
        title: const Text('History'),
      ),
      drawer: const CustomSideMenu(),
      body: const Text('HOLAAAAAA', ),
      // body: ListView(
      //   children: const [
      //     ListTile(
      //       leading: ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: Colors.black,),
      //       title: Text('05/03/2022   -   4 horas'),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       leading: ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: Colors.black,),
      //       title: Text('08/03/2022   -   4 horas'),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       leading: ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: Colors.black,),
      //       title: Text('11/03/2022   -   4 horas'),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       leading: ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: Colors.black,),
      //       title: Text('14/03/2022   -   4 horas'),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       leading: ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: Colors.black,),
      //       title: Text('18/03/2022   -   4 horas'),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       leading: ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: Colors.black,),
      //       title: Text('24/03/2022   -   4 horas'),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //   ],
      // )
    );
  }
}