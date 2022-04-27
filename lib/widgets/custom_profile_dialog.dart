import 'package:charge_point_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final Image? image;

  const CustomDialog({
    Key? key,
    required this.title,
    required this.description,
    required this.buttonText,
    this.image,
  }) : super(key: key);

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
              left: 16.0,
              right: 16.0,
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
            child: _LogInSection(title: title, description: description, buttonText: buttonText),
          ),
          Positioned(
            height: 130,
            left: 16.0,
            right: 16.0,
            child: Container(
              padding: const EdgeInsets.all(0),
              child: FittedBox(
                child: IconButton(onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const CustomDialog(
                      title: 'Iniciar sesión',
                      description: 'Adelante',
                      buttonText: 'Cerrar',
                    ),
                  );
                }, icon: const Icon(Icons.person, color: AppTheme.primaryColor, size: 19,)),
                fit: BoxFit.cover,
              ),
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
  
  const _LogInSection({
    Key? key,
    required this.title,
    required this.description,
    required this.buttonText,
  }) : super(key: key);

  final String title;
  final String description;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column( 
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          TextFormField(
            obscureText: false,
            validator: null,
            onChanged: (value) {},
            //TODO: extraer decorator
            decoration: const InputDecoration(
              hintText: 'Usuario',
              prefixIcon: Icon(Icons.person_pin),
              contentPadding: EdgeInsets.all(10),
              filled: true,
              fillColor: Color.fromARGB(76, 183, 218, 241),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.white)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.white)
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            validator: null,
            onChanged: (value) {},
            decoration: const InputDecoration(
              hintText: 'Contraseña',
              prefixIcon: Icon(Icons.lock),
              contentPadding: EdgeInsets.all(10),
              filled: true,
              fillColor: Color.fromARGB(76, 183, 218, 241),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.white)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.white)
              ),
            ),
          ),
          const SizedBox(height: 40),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // To close the dialog
                  },
                  child: const Text(
                    'Iniciar sesión',
                    style: TextStyle(
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
                    Navigator.of(context).pop(); // To close the dialog
                  },
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(
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