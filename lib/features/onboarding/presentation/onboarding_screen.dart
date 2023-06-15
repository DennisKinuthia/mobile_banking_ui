import 'package:first_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/onboard_login_btn.dart';
import 'components/onboarding_background.dart';
import 'components/robot_image.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            const OnboardBackground(),
            const RobotImage(),
            Positioned(
              top: 90.0,
              left: 20.0,
              right: 20.0,
              child: Text(
                'Your One-Stop Solution for Secure and Convinient Banking',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              bottom: 160.0,
              right: 20.0,
              child: SizedBox(
                width: 200.0,
                child: Text(
                  'Users can log in securely to their bank accounts and view their account balances, transaction history and account details',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            CustomOnboardButton(
              onTap: () => context.goNamed(AppRoutes.verification.name),
            ),
            // IntroCaption(),
          ],
        ),
      ),
    );
  }
}
