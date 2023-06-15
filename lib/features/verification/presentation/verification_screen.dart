import 'package:first_app/features/verification/presentation/components/animated_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ColorFiltered(
              colorFilter: const ColorFilter.matrix(<double>[
                0.5,
                0,
                0,
                0,
                0,
                0,
                0.5,
                0,
                0,
                0,
                0,
                0,
                .5,
                0,
                0,
                0,
                0,
                0,
                1,
                0,
              ]),
              child: Image.asset(
                'assets/images/woman.jpeg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              top: 230.0,
              left: 45.0,
              child: Container(
                width: 300.0,
                height: 300.0,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white.withOpacity(.7),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            Positioned(
              top: 70.0,
              left: 20.0,
              right: 20.0,
              child: Text(
                'Verification',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            const Positioned(
              top: 520.0,
              left: 0,
              right: 0,
              child: AnimatedLoadingWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
