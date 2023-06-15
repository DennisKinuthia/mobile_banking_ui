import 'package:first_app/features/verification/presentation/components/loading_ring.dart';
import 'package:first_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimatedLoadingWidget extends StatefulWidget {
  const AnimatedLoadingWidget({super.key});

  @override
  State<AnimatedLoadingWidget> createState() => _AnimatedLoadingWidgetState();
}

class _AnimatedLoadingWidgetState extends State<AnimatedLoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _curveAnimation;

  bool _showCheckIcon = false;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _curveAnimation = _animationController.drive(
      CurveTween(curve: Curves.easeInOut),
    );
    _animationController.forward();
    _animationController.addStatusListener(_checkAnimationStatus);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.removeStatusListener(_checkAnimationStatus);
    _animationController.dispose();
    super.dispose();
  }

  void _checkAnimationStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      if (mounted) {
        setState(() {
          _showCheckIcon = true;
        });
      }
      Future.delayed(const Duration(seconds: 1), () {
        if (mounted) {
          setState(() {
            _showCheckIcon = false;
          });
        }
        context.goNamed(AppRoutes.home.name);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _curveAnimation,
      builder: (context, child) {
        final progress = _curveAnimation.value;
        final hasCompleted = progress == 1.0;

        return Stack(
          children: <Widget>[
            LoadingRing(
              progress: progress,
            ),
            Positioned.fill(
              child: hasCompleted && _showCheckIcon
                  ? FractionallySizedBox(
                      widthFactor: 0.3,
                      heightFactor: 0.3,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/images/check-mark.png',
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Center(
                      child: Text(
                        '${(progress * 100).round().toString()}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            )
          ],
        );
      },
    );
  }
}
