import 'package:first_app/features/home/presentation/home_screen.dart';
import 'package:first_app/features/onboarding/presentation/onboarding_screen.dart';
import 'package:first_app/features/verification/presentation/verification_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  onboarding,
  verification,
  home,
}

final goRouter = GoRouter(
  initialLocation: '/onboarding',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/onboarding',
      name: AppRoutes.onboarding.name,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/verification',
      name: AppRoutes.verification.name,
      builder: (context, state) => const VerificationScreen(),
    ),
    GoRoute(
      path: '/home',
      name: AppRoutes.home.name,
      builder: (context, state) => const Home(),
    )
  ],
);
