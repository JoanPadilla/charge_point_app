import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/routes/app_routes.dart';
import 'package:charge_point_app/share_preference/preference.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/share_preference/local_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


void main() async {
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
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    PreferenceProvider preference = Provider.of<PreferenceProvider>(context);
    return GetMaterialApp(
      translations: LocalString(),
      locale: preference.language,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.initialRoute,
      theme: AppTheme.lightTheme,
    );
  }
}