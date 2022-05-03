import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    RegistrationFormProvider registrationForm = Provider.of<RegistrationFormProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15),
              child: Text('create_account'.tr, style: const TextStyle(color: Colors.white, fontSize: 30),),
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
                  hintText: 'email'.tr,
                  iconData: Icons.email,
                  inputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value == ''){
                      return 'insert_email'.tr;
                    }
                    const pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp  = RegExp(pattern);
                    return regExp.hasMatch(value) ? null : 'incorrect_email_format'.tr;
                  },
                ),
                const SizedBox(height: 40,),
                CustomInputField(
                  obscureText: true,
                  formValues: registrationForm.formValues,
                  formProperty: 'password',
                  hintText: 'password'.tr,
                  iconData: Icons.lock,
                  validator: (value) {
                    if (value == null || value == ''){
                      return 'insert_password'.tr;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40,),
                CustomInputField(
                  obscureText: true,
                  formValues: registrationForm.formValues,
                  formProperty: 'password_repeat',
                  hintText: 'repeat_password'.tr,
                  iconData: Icons.lock,
                  validator: (value) {
                    if (!registrationForm.isSamePassword()){
                      return 'La contraseña no coincide';
                    }
                    return null;
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
                    ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                      duration: const Duration(seconds: 2),
                      backgroundColor: Colors.transparent,
                      elevation: 20,
                      content: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 33, 117, 243),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color.fromARGB(255, 68, 102, 255), width: 3),
                        ),
                        child: Text('signed_up'.tr, style: const TextStyle(fontSize: 15),)
                      ),
                    ));
                    Navigator.of(context).pop();
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      registrationForm.isLoading
                        ? 'wait'.tr
                        : 'sign_up'.tr,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 20),)
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