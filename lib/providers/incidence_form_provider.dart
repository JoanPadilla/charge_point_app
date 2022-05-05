import 'package:charge_point_app/providers/form_provider.dart';
import 'package:flutter/cupertino.dart';

class IncidenceFormProvider extends FormProvider {
  
  String subject = '';
  //TODO: string o chargingpoint
  String chargePoint = '';
  String description = '';
  
  bool _startedForm = false;

  bool get startedForm => _startedForm;

  set startedForm(bool startedForm) {
    _startedForm = startedForm;
    notifyListeners();
  }
}