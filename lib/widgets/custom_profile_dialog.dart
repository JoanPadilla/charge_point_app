import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDialog extends StatelessWidget {

  const CustomDialog({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 90,
              bottom: 16.0,
              left: 20.0,
              right: 20.0,
            ),
            margin: const EdgeInsets.only(top: 66.0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                ),
              ],
            ),
            child: SingleChildScrollView(
              physics:const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  Text('Iniciar sesion', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500, color: Colors.black,),),
                  SizedBox(height: 40),
                  _LogInSection(),
                ],
              ),
            ),
          ),
          Positioned(
            height: 130,
            left: 16.0,
            right: 16.0,
            child: Container(
              padding: const EdgeInsets.all(0),
              child: const Icon(Icons.person, color: AppTheme.primaryColor, size: 90,),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: AppTheme.primaryColor,
                  width: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LogInSection extends StatelessWidget {
  
  const _LogInSection({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    LoginFormProvider loginForm = Provider.of<LoginFormProvider>(context);
    
    return Form(
      key: loginForm.formKey,
      child: Column( 
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value == null || value == ''){
                return 'Inserte un email';
              }
              // Regular expression for email validation
              String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp  = RegExp(pattern);
              return regExp.hasMatch(value) ? null : 'El valor ingresado no parece ser un correo';
            },
            onChanged: (value) => loginForm.email = value,
            decoration: AppTheme.loginInputDecoration.copyWith(
              hintText: 'Email',
              prefixIcon: const Icon(Icons.person_pin),
            ),
          ),
          const SizedBox(height: 25),
          TextFormField(
            obscureText: true,
            validator: (value) {
              if (value == null || value == ''){
                  return 'Introduzca la contraseña';
              }
            },
            onChanged: (value) => loginForm.password = value,
            decoration: AppTheme.loginInputDecoration.copyWith(
              hintText: 'Contraseña',
              prefixIcon: const Icon(Icons.lock),
            ),
          ),
          const SizedBox(height: 40),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                ElevatedButton(
                  style: loginForm.isLoading ? null : TextButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                  onPressed: loginForm.isLoading ? null : () async {
                    
                    FocusScope.of(context).unfocus();
                    
                    if( !loginForm.isValidForm() ) return;
                    
                    loginForm.isLoading = true;
                    
                    //TODO: autenticacion con backend
                    // final authService = Provider.of<AuthService>(context, listen: false);
                    // final String? errorMessage = await authService.login(loginForm.email, loginForm.password);
                    await Future.delayed(const Duration(seconds: 2));

                    loginForm.isLoading = false;
                    Navigator.of(context).pop();
                    // if ( errorMessage == null ) {
                    //   loginForm.isLoading = false;
                    //   Navigator.of(context).pop();
                    // }
                    // else {
                      // // TODO: mostrar error en pantalla
                      // print( errorMessage );
                    //   NotificationsService.showSnackbar(errorMessage);
                    //   loginForm.isLoading = false;
                    // }
                    
                    // loginForm.isLoading = false;
                    // Navigator.of(context).pop();
                  },
                  child: Text(
                     loginForm.isLoading
                      ? 'Espere'
                      : 'Iniciar sesión',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black12,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('sing_up'); // To close the dialog
                  },
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(
                      color: AppTheme.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}