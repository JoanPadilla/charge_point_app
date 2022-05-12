import 'package:charge_point_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ChargePointButton extends StatelessWidget {
  final bool available;
  final String name;

  const ChargePointButton({
    Key? key,
    required this.available,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 11,
            primary: Colors.transparent,
            onPrimary: Colors.white,
            padding: const EdgeInsets.all(0.0),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
        onPressed: !available
            ? null
            : () {
                Navigator.pushNamed(context, 'charge_point');
              },
        child: Ink(
          decoration: BoxDecoration(
            gradient: available
                ? const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 189, 164, 206),
                      AppTheme.primaryColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                    stops: [0.05, 0.35],
                  )
                : null,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: SizedBox(
            height: 70,
            child: Align(
                alignment: Alignment.center,
                child: Text(name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold))),
          ),
        ),
      ),
    );
  }
}