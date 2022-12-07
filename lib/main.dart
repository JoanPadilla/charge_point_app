import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/routes/app_routes.dart';
import 'package:charge_point_app/services/grpc/generated/charge_point.pb.dart';
import 'package:charge_point_app/services/grpc/grpc_manager/grpc_service_manager.dart';

import 'package:charge_point_app/share_preference/preference.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/share_preference/local_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


void main() async {
  
  Environment env = Environment.DEV;
  // Environment env = Environment.PROD;
  GrpcServiceManager serviceManager = GrpcServiceManager(environment: env);
  serviceManager.init();
  
  
  debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized();
  await Preference.init();
  
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(const AppState());
    }
  );
}


class AppState extends StatelessWidget {
  const AppState({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => MapProvider(), lazy: false),
        ChangeNotifierProvider(create: ( _ ) => PreferenceProvider(language: Preference.language), lazy: false,),
        ChangeNotifierProvider(create: ( _ ) => FormProvider(), lazy: false,),
        ChangeNotifierProvider(create: ( _ ) => RegistrationFormProvider(), lazy: false,),
        ChangeNotifierProvider(create: ( _ ) => NotificationsProvider(), lazy: false,),
        ChangeNotifierProvider(create: ( _ ) => IncidenceFormProvider(), lazy: false,),
        ChangeNotifierProvider(create: ( _ ) => LoginFormProvider(), lazy: false,),
        ChangeNotifierProvider(create: ( _ ) => ChargePointProvider(), lazy: false,),
        ChangeNotifierProvider(create: ( _ ) => HistoryProvider(), lazy: true,),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);
  
  void loadChargePoints(ChargePointProvider provider) async {
    ChargePointSet response = await GrpcServiceManager().getAllChargePoints();
    provider.setChargePointList(response.chargePoints.toList());
  }
  
  @override
  Widget build(BuildContext context) {
    var chargePointProvider = Provider.of<ChargePointProvider>(context, listen: false);
    loadChargePoints(chargePointProvider);
    PreferenceProvider preference = Provider.of<PreferenceProvider>(context);
    return GetMaterialApp(
      translations: LocalString(),
      locale: preference.language,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.initialRoute,
      theme: AppTheme.lightTheme,
      onDispose: GrpcServiceManager().onDispose,
    );
  }
}