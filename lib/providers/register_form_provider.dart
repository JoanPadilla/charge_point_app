import 'package:charge_point_app/providers/form_provider.dart';

class RegistrationFormProvider extends FormProvider{

  Map<String, String> formValues = {
    'email' : '',
    'password' : '',
    'password_repeat' : '',
  };
  
  bool isSamePassword() {
    return formValues['password'] == formValues['password_repeat'];
  }
}