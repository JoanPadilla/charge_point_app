import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:provider/provider.dart';


class IncidenceScreen extends StatelessWidget {
  const IncidenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IncidenceFormProvider formProvider = Provider.of<IncidenceFormProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('incidences'.tr),
      ),
      drawer: const CustomSideMenu(),
      body: Center(
        child: SingleChildScrollView(
          child: !formProvider.startedForm 
            ? TextButton(
              child: const Text('data'),
              onPressed: () {
                formProvider.startedForm = !formProvider.startedForm;
              },) 
            : const _FormSection(),
        ),
      )
    );
  }
}

class _FormSection extends StatelessWidget {
  const _FormSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    IncidenceFormProvider formProvider = Provider.of<IncidenceFormProvider>(context);
    
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Form(
        key: formProvider.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text('subject'.tr, style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 7,),
            TextFormField(
              onChanged: (value) {
                formProvider.subject = value;
              },
              validator: (value) {
                if (value == null || value == '') {
                  return 'insert_incidence_subject'.tr;
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'subject'.tr,
              ),
            ),
            
            const SizedBox(height: 35,),
            
            Text('charging_point'.tr + ' ' + 'optional'.tr, style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 7,),
            DropdownButtonFormField<String>(
              isExpanded: true,
              value: '_',
              onSaved: (value) {
                formProvider.chargePoint = value?? '';
              },
              validator: (value) => value == null ? 'choose_option'.tr : null,
              items: const [
                DropdownMenuItem(child: Text(' - - '), value: '_',),
                DropdownMenuItem(child: Text('P1'), value: 'P1',),
                DropdownMenuItem(child: Text('P2'), value: 'P2',),
                DropdownMenuItem(child: Text('P3'), value: 'P3',),
                DropdownMenuItem(child: Text('P4'), value: 'P4',),
              ],
              onChanged: ( _ ) {},
            ),
            
            const SizedBox(height: 45,),
            
            Text('description'.tr, style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 8,),
            TextFormField(
              onChanged: (value) {
                formProvider.description = value;
              },
              validator: (value) {
                if (value == null || value == ''){
                  return 'insert_description'.tr;
                }
                return null;
              },
              maxLines: 11,
              decoration: InputDecoration(
                hintText: 'description'.tr,
                fillColor: const Color.fromARGB(255, 241, 241, 241),
                filled: true,
              ),
            ),
            
            const SizedBox(height: 40,),
            
            ElevatedButton(
              onPressed: formProvider.isLoading ? null : () async {
                
                FocusScope.of(context).unfocus();
                
                if( !formProvider.isValidForm() ) return;
                
                formProvider.isLoading = true;
                
                //TODO: autenticacion con backend
                // final authService = Provider.of<AuthService>(context, listen: false);
                // final String? errorMessage = await authService.login(loginForm.email, loginForm.password);
                await Future.delayed(const Duration(seconds: 2));
                
                formProvider.isLoading = false;
                formProvider.startedForm = !formProvider.startedForm;
                ScaffoldMessenger.of(context).showSnackBar( CustomSnackBar(
                  color: const Color.fromARGB(255, 33, 117, 243),
                  borderColor: const Color.fromARGB(255, 68, 102, 255),
                  text: 'incidence_sent'.tr,
                ));
                formProvider.resetFormKey();
                Navigator.of(context).pushReplacementNamed('home');
              },
              child: Text(
                formProvider.isLoading
                ? 'wait'.tr
                : 'send'.tr,
                style: const TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                primary: AppTheme.secondaryColor
              )
            ),
          ],
        ),
      ),
    );
  }
}