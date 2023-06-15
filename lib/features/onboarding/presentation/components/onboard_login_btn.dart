import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOnboardButton extends StatelessWidget {
  const CustomOnboardButton({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 48.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: size.width * .90,
            height: size.height * .070,
            decoration: BoxDecoration(
                color: const Color(0xFFf82c5c),
                borderRadius: BorderRadius.circular(50.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.fingerprint_rounded,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  'Log In',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
