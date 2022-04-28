import 'package:charge_point_app/providers/form_provider.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class IncidenceScreen extends StatelessWidget {
  const IncidenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incidencia'),
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
    String subject = '';
    String chargePoint = '';
    String descripction = '';
    
    return Form(
      key: incidenceForm.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const Text('Concepto', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 7,),
          TextFormField(
            onChanged: (value) {
              subject = value;
            },
            validator: (value) {
              if (value == null || value == '') {
                return 'Introzuca el concepto de la incidencia';
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: 'Concepto',
            ),
          ),
          
          const SizedBox(height: 40,),
          
          const Text('Punto de carga (opcional)', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 7,),
          DropdownButtonFormField<String>(
            isExpanded: true,
            value: '_',
            onSaved: (value) {
              chargePoint = value?? '';
            },
            validator: (value) => value == null ? 'Elige una opción' : null,
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
          
          const Text('Descripcion', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 8,),
          TextFormField(
            onChanged: (value) {
              descripction = value;
            },
            validator: (value) {
              if (value == null || value == ''){
                return 'Introduzca una descripción del problema';
              }
              return null;
            },
            maxLines: 13,
            decoration: const InputDecoration(
              hintText: 'Descripcion',
              fillColor: Color.fromARGB(255, 241, 241, 241),
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
            child: const Text('Enviar', style: TextStyle(fontSize: 20),),
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