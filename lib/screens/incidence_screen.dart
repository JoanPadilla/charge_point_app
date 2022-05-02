import 'package:charge_point_app/providers/form_provider.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


class IncidenceScreen extends StatelessWidget {
  const IncidenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('incidences'.tr),
      ),
      drawer: const CustomSideMenu(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: _FormSection(),
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
    
    FormProvider incidenceForm = Provider.of<FormProvider>(context);
    //TODO: variables así o en provider
    String subject = '';
    String chargePoint = '';
    String descripction = '';
    
    return Form(
      key: incidenceForm.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text('subject'.tr, style: const TextStyle(fontSize: 20),),
          const SizedBox(height: 7,),
          TextFormField(
            onChanged: (value) {
              subject = value;
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
          
          const SizedBox(height: 40,),
          
          Text('charging_point'.tr + ' ' + 'optional'.tr, style: const TextStyle(fontSize: 20),),
          const SizedBox(height: 7,),
          DropdownButtonFormField<String>(
            isExpanded: true,
            value: '_',
            onSaved: (value) {
              chargePoint = value?? '';
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
          
          const SizedBox(height: 50,),
          
          Text('description'.tr, style: const TextStyle(fontSize: 20),),
          const SizedBox(height: 8,),
          TextFormField(
            onChanged: (value) {
              descripction = value;
            },
            validator: (value) {
              if (value == null || value == ''){
                return 'insert_description'.tr;
              }
              return null;
            },
            maxLines: 13,
            decoration: InputDecoration(
              hintText: 'description'.tr,
              fillColor: const Color.fromARGB(255, 241, 241, 241),
              filled: true,
            ),
          ),
          
          const SizedBox(height: 40,),
          
          ElevatedButton(
            onPressed: incidenceForm.isLoading ? null : () async {
              
              FocusScope.of(context).unfocus();
              
              if( !incidenceForm.isValidForm() ) return;
              
              incidenceForm.isLoading = true;
              
              //TODO: autenticacion con backend
              // final authService = Provider.of<AuthService>(context, listen: false);
              // final String? errorMessage = await authService.login(loginForm.email, loginForm.password);
              await Future.delayed(const Duration(seconds: 2));
              
              incidenceForm.isLoading = false;
              //TODO: enviar a la misma pantalla pero antes de empezar el formulario
              //TODO: sacar mensaje de feedback
              Navigator.of(context).pushNamed('home');
            },
            child: Text('send'.tr, style: TextStyle(fontSize: 20),),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              primary: AppTheme.secondaryColor
            )
          ),
        ],
      ),
    );
  }
}