import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/colors.dart' as colors;
import 'package:flutter_weather_app/constants/sizes.dart' as sizes;
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../models/city.model.dart';

class CityButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  const CityButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 24.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              onSurface: colors.backgroundColor,
              padding: const EdgeInsets.only(top: 16.0, bottom: 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11.0),
              ),
            ),
            onPressed: onPressed,
            child: Text(label,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: colors.primaryColor,
                        fontSize: sizes.fontListTitle)))));
  }
}
