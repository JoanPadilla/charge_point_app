import 'package:charge_point_app/providers/charge_point_provider.dart';
import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/share_preference/user_data.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
        actions: [
          const _NotificationsButton(),
          const SizedBox(width: 20),
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 45,
            padding: const EdgeInsets.all(0),
            child: FittedBox(
              child: IconButton(
                  onPressed: () {
                    NotificationsProvider notificationsProvider =
                        Provider.of<NotificationsProvider>(context,
                            listen: false);
                    notificationsProvider.closeNotifications();
                    if (UserData.token == null){
                      showDialog(
                        context: context,
                        builder: (context) => const CustomLoginDialog(),
                      );
                    } else {
                      
                    }
                  },
                  icon: const Icon(
                    Icons.person,
                    color: Colors.black54,
                    size: 30,
                  )),
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Colors.black54,
                width: 2,
              ),
            ),
          ),
        ],
      ),
      drawer: const CustomSideMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //TODO: custom_info_window per al mapa
          const ChargePointsMap(),
          Divider(
              thickness: 1,
              height: 1,
              color: AppTheme.primaryColor.withOpacity(0.2)),
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'available_chargers'.tr,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          height: 4,
                          width: 170,
                          color: AppTheme.primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const _CustomTable(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NotificationsButton extends StatelessWidget {
  const _NotificationsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NotificationsProvider>(context, listen: true);
    return IconButton(
      key: provider.key,
      onPressed: () {
        provider.notificaciones = !provider.notificaciones;
        provider.isMenuOpen
            ? provider.closeNotifications()
            : provider.openNotifications(context);
      },
      icon: Stack(
        children: <Widget>[
          const Center(
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 25,
            ),
          ),
          if (provider.notificaciones)
            const Positioned(
              child: Icon(Icons.brightness_1, color: Colors.red, size: 12),
              left: 17,
              top: 9,
            ),
        ],
      ),
    );
  }
}

class _CustomTable extends StatelessWidget {
  const _CustomTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chargePointProvider = Provider.of<ChargePointProvider>(context);
    return chargePointProvider.chargePoints == null
        ? Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            height: 200,
            child: const CircularProgressIndicator.adaptive(),
          )
        : Table(
            defaultColumnWidth: const FixedColumnWidth(120),
            children: chargePointProvider.getChargePointsTable(),
          );
  }
}
