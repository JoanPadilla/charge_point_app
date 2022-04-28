import 'package:flutter/cupertino.dart';

class RegistrationFormProvider extends ChangeNotifier{
  
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Map<String, String> formValues = {
    'email' : '',
    'password' : '',
    'password_repeat' : '',
  };
  
  bool _isLoading = false;
  
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
  
  
  bool isValidForm() {
    return formKey.currentState?.validate() ?? false;
  } 
  
  bool isSamePassword() {
    return formValues['password'] == formValues['password_repeat'];
  }
}