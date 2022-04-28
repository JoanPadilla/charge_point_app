import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    RegistrationFormProvider registrationForm = Provider.of<RegistrationFormProvider>(context);
    
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
            key: registrationForm.formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomInputField(
                  formValues: registrationForm.formValues,
                  formProperty: 'email',
                  hintText: 'Email',
                  iconData: Icons.email,
                  validator: (value) {
                    if (value == null || value == ''){
                      return 'Introduzca un email';
                    }
                    const pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp  = RegExp(pattern);
                    return regExp.hasMatch(value) ? null : 'El valor ingresado no parece ser un correo';
                  },
                ),
                const SizedBox(height: 40,),
                CustomInputField(
                  obscureText: true,
                  formValues: registrationForm.formValues,
                  formProperty: 'password',
                  hintText: 'Contraseña',
                  iconData: Icons.lock,
                  validator: (value) {
                    if (value == null || value == ''){
                      return 'Introduzca la contraseña';
                    }
                  },
                ),
                const SizedBox(height: 40,),
                CustomInputField(
                  obscureText: true,
                  formValues: registrationForm.formValues,
                  formProperty: 'password_repeat',
                  hintText: 'Repita la contraseña',
                  iconData: Icons.lock,
                  validator: (value) {
                    if (!registrationForm.isSamePassword()){
                      return 'La contraseña no coincide';
                    }
                  },
                ),
                const SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: registrationForm.isLoading ? null : () async {
                    
                    FocusScope.of(context).unfocus();
                    
                    if( !registrationForm.isValidForm() ) return;
                    
                    registrationForm.isLoading = true;
                    
                    //TODO: autenticacion con backend
                    // final authService = Provider.of<AuthService>(context, listen: false);
                    // final String? errorMessage = await authService.login(loginForm.email, loginForm.password);
                    await Future.delayed(const Duration(seconds: 2));

                    registrationForm.isLoading = false;
                    Navigator.of(context).pop();
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      registrationForm.isLoading
                        ? 'Espere'
                        : 'Registrarse',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),)
                    ),
                  style: registrationForm.isLoading ? null : TextButton.styleFrom(
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