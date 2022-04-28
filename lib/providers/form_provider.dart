

import 'package:flutter/cupertino.dart';

class FormProvider extends ChangeNotifier{
  
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  bool _isLoading = false;
  
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
  
  
  bool isValidForm() {
    return formKey.currentState?.validate() ?? false;
  } 
  
}