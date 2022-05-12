import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:provider/provider.dart';

class CustomLoginDialog extends StatelessWidget {

  const CustomLoginDialog({ Key? key, }) : super(key: key);

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
                children: [
                  Text('log_in'.tr, style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w500, color: Colors.black,),),
                  const SizedBox(height: 40),
                  const _LogInSection(),
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
    
    LoginFormProvider formProvider = Provider.of<LoginFormProvider>(context);
    
    return Form(
      key: formProvider.formKey,
      child: Column( 
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value == null || value == ''){
                return 'insert_email'.tr;
              }
              // Regular expression for email validation
              String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp  = RegExp(pattern);
              return regExp.hasMatch(value) ? null : 'incorrect_email_format'.tr;
            },
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => formProvider.email = value,
            decoration: AppTheme.loginInputDecoration.copyWith(
              hintText: 'email'.tr,
              prefixIcon: const Icon(Icons.person_pin),
            ),
          ),
          const SizedBox(height: 25),
          TextFormField(
            obscureText: true,
            validator: (value) {
              if (value == null || value == ''){
                  return 'insert_password'.tr;
              }
              return null;
            },
            onChanged: (value) => formProvider.password = value,
            decoration: AppTheme.loginInputDecoration.copyWith(
              hintText: 'password'.tr,
              prefixIcon: const Icon(Icons.lock),
            ),
          ),
          const SizedBox(height: 40),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                ElevatedButton(
                  style: formProvider.isLoading ? null : TextButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                  onPressed: formProvider.isLoading ? null : () async {
                    
                    FocusScope.of(context).unfocus();
                    
                    if( !formProvider.isValidForm() ) return;
                    
                    formProvider.isLoading = true;
                    
                    final userProvider = Provider.of<UserProvider>(context, listen: false);
                    final bool logged = await userProvider.login(formProvider.email, formProvider.password);
                    formProvider.isLoading = false;
                    if (logged) {
                      ScaffoldMessenger.of(context).showSnackBar( CustomSnackBar(
                        color: const Color.fromARGB(255, 33, 117, 243),
                        borderColor: const Color.fromARGB(255, 68, 102, 255),
                        text: 'logged_in'.tr,
                      ));
                      Navigator.of(context).pop();
                    }
                    //TODO: el mensaje se muestra por debajo del dialogo
                    // ScaffoldMessenger.of(context).showSnackBar( CustomSnackBar(
                    //   color: const Color.fromARGB(255, 33, 117, 243),
                    //   borderColor: const Color.fromARGB(255, 68, 102, 255),
                    //   text: 'coult_not_login'.tr,
                    // ));
                  },
                  child: Text(
                     formProvider.isLoading
                      ? 'wait'.tr
                      : 'log_in'.tr,
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
                    Navigator.of(context).popAndPushNamed('sign_up'); // To close the dialog
                  },
                  child: Text(
                    'sign_up'.tr,
                    style: const TextStyle(
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