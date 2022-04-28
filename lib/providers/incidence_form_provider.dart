import 'package:flutter/cupertino.dart';

class IncidenceFormProvider extends ChangeNotifier {
  
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  String subject = '';
  String chargePoint = '';
  String description = '';
}