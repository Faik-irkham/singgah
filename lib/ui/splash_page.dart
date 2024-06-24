import 'package:flutter/material.dart';
import 'package:singgah/shared/theme.dart';
import 'package:singgah/ui/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
    );

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 32,
            ),
            const SizedBox(width: 2),
            Text(
              'Singgah',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
