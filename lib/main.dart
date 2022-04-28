import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/routes/app_routes.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(const AppState());
    });
}

class AppState extends StatelessWidget {
  const AppState({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => MapProvider(), lazy: false),
        ChangeNotifierProvider(create: ( _ ) => PreferenceProvider(), lazy: false,),
        ChangeNotifierProvider(create: ( _ ) => LoginFormProvider(), lazy: false,),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.initialRoute,
      theme: AppTheme.lightTheme,
    );
  }
}