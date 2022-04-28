import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';


class SingUpScreen extends StatelessWidget {
  const SingUpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    //TODO: vars provisionals
    Map<String, String> formValues = {};
    var formProperty = '';
    
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15, left: 15),
              child: Text('Crear cuenta', style: TextStyle(color: Colors.white, fontSize: 30),),
            )
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 60),
          child: Form(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomInputField(formValues: formValues, formProperty: formProperty, hintText: 'Usuario', iconData: Icons.person_pin),
                const SizedBox(height: 40,),
                CustomInputField(formValues: formValues, formProperty: formProperty, hintText: 'Email', iconData: Icons.email),
                const SizedBox(height: 40,),
                CustomInputField(formValues: formValues, formProperty: formProperty, hintText: 'Contraseña', iconData: Icons.lock),
                const SizedBox(height: 40,),
                CustomInputField(formValues: formValues, formProperty: formProperty, hintText: 'Repita la contraseña', iconData: Icons.lock),
                const SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: () {},
                  child: const  SizedBox(
                    width: double.infinity,
                    child: Text('Registrarse', textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 20),)),
                  style: TextButton.styleFrom(
                    backgroundColor: AppTheme.secondaryColor,
                    elevation: 8,
                    shape: const StadiumBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}